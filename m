Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8622D6624
	for <keys@linux.kernel.org>; Thu, 12 Jun 2025 21:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749762554; cv=none; b=LjwLx1H7D7XexV7STomSOUd/dVwEMw0x51NkwXAQq2xTC0ULX6CMhz5jfe5/Ec8bF2FhmkOc4xkCLO0q27afmOM3FVGsG1BF4nBTZp2GciEzskJx9VXKZutWIyMVeRvsdGcf+SoUb5jpWV6j3Piv/6+nFaR5utkG/Gc5B0Hh8Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749762554; c=relaxed/simple;
	bh=TjQgy0o2PiZUPFMzgEzWbNtjssxzmbpwMPeKlFljmLE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EJITmHv+oZJSWQErMnoUvYXpKY1ca2ctx/2/HD1suGlyUC5WFmYOdsFZp4s60/eP1vYLnVaK8hQ2rt75iqEfyHE3FSI86JVOqYE+xM5ae0z3Yph9ixX/wOhO3LQgir9JrGO3speopMbismrnsV7d69XSolEzt2XJoqykx/4vjhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=Dg2Nt6Ly; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Dg2Nt6Ly"
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-4e7b7b09887so835012137.1
        for <keys@linux.kernel.org>; Thu, 12 Jun 2025 14:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1749762550; x=1750367350; darn=linux.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TjQgy0o2PiZUPFMzgEzWbNtjssxzmbpwMPeKlFljmLE=;
        b=Dg2Nt6LyRsqoqKg6Pp9xEPKq8PlrdbKQJBzgGYxWNXd5lGjMe+yOwGPXmsmggXhGFK
         PTvRrRdUsO4Mk4AWWHlM4AsAw/NdSGpA2juJyUVxYnBkAPj4bV+BFhgCR56lhIeSzBLO
         raq0CAQ9hjfnq4Xj7yuv9DFH8hq/tVGZhWSSM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749762550; x=1750367350;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TjQgy0o2PiZUPFMzgEzWbNtjssxzmbpwMPeKlFljmLE=;
        b=HOlo0O0/LbzkxuiCzvbaOeupjxoQwlK5L1eKFhD9MoICPZWrXiqTFq4zLnGxwYmR4B
         Ah+/8npYu8hIHQbgx6Fgbx14IRmOpAyWg2NlRQdjEFkW2NAJXcEIdXgfDyTfJCqm4TuE
         LIfoqCFMQvudrMZ+8KGOjvxdRVJjN1GxloMLegoyD4yAZiyV80jmxWEjCM9WwP+d/7Rg
         31mWFnxKlA93Xa5owkw8N5IS+jWHGgN+OCM797gQhEJkbQ7Vfivp7FYnyeTbdPf233NA
         0pZLblIH5G0nODuBcGhCQMTjbWCM3ul6Hu52WuP6nZzen2PMSYIKgBklnMZ+sEn6Hs6k
         g+5A==
X-Forwarded-Encrypted: i=1; AJvYcCV0vsYmLs94VHvuBxCGAcshU7jhM14tmceF+TWP9VNWwbI+8lBcqWBZx5b+oT5ESGteJFOi@linux.kernel.org
X-Gm-Message-State: AOJu0YxTOZjfenKe/ptyeemKTXgD5eLV1/cpDAdWSnVUsqej3bdtr3aR
	fTXT1NhN92jmZX1CDhP+fjb9otbjBGF9MM05eqI8sFf8QR29pJk1ySEFqyk2DnixW3ttOUTi8L2
	cRpki6eD3yZWiDu0NZjzTLdptcBsyLHs2z0JWr779WA==
X-Gm-Gg: ASbGncsud4Vtw//8kuA3fWrMCJP3Bo/L1uUt5zO0aE1BZ4GmP4Y9CioIDgvD4zvkEbZ
	YRD2SNwwgc6oQRAU3xTz72VtvPt+OSgTRPJ4FJWI3euTwUnF67bxMiEvmPJqfv8ASL/3cW9IeP9
	4noO8W0B7qqk5kdsEOWwvdTdE4lqMUX/bzjz1Qi7Yp8wef
X-Google-Smtp-Source: AGHT+IFkgzh3yQ//w55ASsEeVn9FjVCWo7DgWq8vlU86lEx6jzdJ9VzpEB+uVAvEfMCjUCxHRFT7mENiL3y/xjpkqlI=
X-Received: by 2002:a05:6102:c86:b0:4e4:57db:b28a with SMTP id
 ada2fe7eead31-4e7e39d913cmr479819137.19.1749762550396; Thu, 12 Jun 2025
 14:09:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
References: <b4bad496-3b0e-4925-bdf5-4368180fcf9b@kernel.org>
 <ft3kdxdnwnj5u4drrl2rtgbir4zzpl6woky34drik4n3wrqoz3@npljuav53pxe> <917f4fc2-ac6b-4d0a-beb5-9db340d62563@kernel.org>
In-Reply-To: <917f4fc2-ac6b-4d0a-beb5-9db340d62563@kernel.org>
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Date: Thu, 12 Jun 2025 17:08:59 -0400
X-Gm-Features: AX0GCFsb1yte3t7BceAsUbeoCLXMfo1Fg8l5TjUVXSuNfQh0gQII4092nbaea8s
Message-ID: <CAMwyc-TV9r1NNx5BPPjtqbdpLuXkT0oyqLb+S9yEcxFdOhB8Og@mail.gmail.com>
Subject: Re: Please add key for Vineet Gupta (ARC maintainer)
To: Vineet Gupta <vgupta@kernel.org>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	keys@linux.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 12 Jun 2025 at 16:59, Vineet Gupta <vgupta@kernel.org> wrote:
> > Before creating your next UID is suggest you read
> > https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-harmful.html
>
> Thx for the pointer. It makes sense.
> Shall I remove them from existing key and send it over again (I see it hasn't
> been pushed yet to the repo)

Yes, if you want to do that, I will hold off on processing this request.

-K
