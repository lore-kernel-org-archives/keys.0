Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA341D416C
	for <keys@linux.kernel.org>; Sat,  9 May 2026 00:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778287862; cv=none; b=Mm37WTRVBQwGO6wjIGvQd66wEQ4B4XCHhnqLn4MMsJStdZu4/rxPPQ8DEN8B8bjRi2zVRuhKqa/2KLXkcj+3CQyRkp8Ww41FqFN6rAAj7ymfwCa+P99DfiYmEhko/NPhaVALjqzJegrZlco3Y6kC6h20ig4ZqimvQ4zAfAolMBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778287862; c=relaxed/simple;
	bh=OeDkPyyfpo1r2uQaCdYH0C4ogu4k/gpQ/I1s4NmAw5I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e43d30i5HoFY+V43WROaL0tbshB49ME8cJ6IdY62dBgqLfoIn1MuwP/yy1CXav+3/Wc0ArXGtlsJAwDfrOLRzfYfvr0WbZFIqwnCjmuKPodMK/8YVQC58P5gvwElfHlrEsPrdu4miVcJKe4JlLXiUuJkCL2HVdXr1jPLaKolCpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=W5TerBpe; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="W5TerBpe"
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8f231f3b130so195454085a.3
        for <keys@linux.kernel.org>; Fri, 08 May 2026 17:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1778287860; x=1778892660; darn=linux.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=35qYJHZMQkpG/rUhKXXMsIsv6g6wbLqLJ4+NzuU29dw=;
        b=W5TerBpe7mM5ddZsPLMQzn+2/dplS9YkhxLLNXteOkGsPuxxN3xmG0d7FIFPsjBrxB
         4BWnI01SPQb31to75aKrb8OurFXuDaqCR4eC3bmacg4Yj/E9kT+bsrkqyscymgcVi72N
         o1paRp7SeKFNw1X2Pe7jR5tMaxA40uDAnLIEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778287860; x=1778892660;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=35qYJHZMQkpG/rUhKXXMsIsv6g6wbLqLJ4+NzuU29dw=;
        b=gxLZATsggVm9KJ4ICZ/IT95hadXWzBP4YuCJkOrcRIjcLRGRNH1z513oH9RQd9Usfx
         OWV5Qt1L5p38JTCzt/fX3DW6BQF/uzQYZ59FdoGU0eN2JwMEQe1UOOjz5WGvnkpcyJUS
         V+fd+jNcF7HYWbpptaEiekV6tniMyPiZ+gJh3L1UBWIDXhVEwCtEN7jN8cuVpRcWxzYm
         ql6325sjUVoLpeaPGuLXDuiF+HlrgdMgROI7GgcMFuaZFPFzd4uCXxkAQS6LjivBKCGl
         itIhDwOKs9XLOj0ulE7Sjc5oPexUyRh3iyC2/fOvluaMz8VumAuzYsvGwX1QyCquHL5x
         uoZA==
X-Forwarded-Encrypted: i=1; AFNElJ8xmXl9CaxgEC+p42OZttX3LvqUVpH6AH7P/u2d6YcvcTgoRTGrmiu0qVPilbpgsyPOsU7z@linux.kernel.org
X-Gm-Message-State: AOJu0YyrwvDZMJW3zP6S/wzps2f58M819VzkE9cGQF6P7OYYxwReYVm0
	kBnKMwwoRCtkW+Zn3uBo3uLrAPoqlK2VS/f9N2AjkbssuSGt0LSP5PwrEAoF9QEQBHPMYeibc+d
	dIgbS
X-Gm-Gg: AeBDies8wU2VsinJxFMgLd8rychRfDv4xNawq4pZc/Ygc7Rgf/LHztgl+tlb9OB9I2P
	9PtFC0p69Hm5q2U3KTtlxzu1FOpy6wzeKAFXsuAgGLHZixENzutvMnZSRHyqE29UNfswYidRnoc
	YBc39VYwumhj8qxfYHDC5k3UFC6llFM84n9wpbZKH4q/HnSu503C1x8PKjg3uv2s/IXF9l+rTy0
	k1izK0SP+p/+O/WEBctGPHPJJrjdKwkDgDP2QqHZdEmVqaWo/3HqDbq+bUhKvdCDLbqkCl7m3zc
	kinnDK9pNkiZ7jX62+rKdmJjR8l3SaYfGl23y3jkNVc7qejAGr5+O/A4+Baz9SNDEOXWY4g1EMk
	JBiPIqnLm9AgX6jao7M2fqMkIISIuh4RYuEQzOBP1jduf8YirKdLXz9H5Q8D5r8pzFbkQztyBb3
	l4leQ4DGJzd4DlJDbLP/464flhEd5+V82pykZGgiMscrotWrpV83JMLX1Dz1rcqwIJZdBNJ4Hp4
	kW0MqCOl72nWDU5UJDnNTyxSEEOLiOHrVQ1B93COLo20zC5NJtpGRokUyGL6FUkhNpysFgnmhYt
	161MOx3jlWFT1eA0zG/REFdC
X-Received: by 2002:a05:620a:2592:b0:8ed:b47b:ea0 with SMTP id af79cd13be357-904d72b9775mr2252173185a.57.1778287859652;
        Fri, 08 May 2026 17:50:59 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-33-142-113-79-220.dsl.bell.ca. [142.113.79.220])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8fc2cd04de9sm2445261485a.44.2026.05.08.17.50.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 17:50:59 -0700 (PDT)
Date: Fri, 8 May 2026 20:50:57 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Eugen Hristev <ehristev@kernel.org>, keys@linux.kernel.org
Subject: Re: Updated key with new UIDs
Message-ID: <20260508-funny-enigmatic-beetle-cecf2d@lemur>
References: <8f9c782c-6219-4d54-9d58-5b6ef1c76598@kernel.org>
 <af5m5fADczdzu2qC@monoceros>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <af5m5fADczdzu2qC@monoceros>

On Sat, May 09, 2026 at 12:44:41AM +0200, Uwe Kleine-König wrote:
> `sq cert lint` reports about your certificate:
> 
> Certificate 1EB31E020EAC2FC8 contains a User ID (Eugen Hristev <eugen.hristev@microchip.com>) protected by SHA-1
> Certificate 1EB31E020EAC2FC8, key 358A147553D25DF2 uses a SHA-1-protected binding signature.
> 
> Would be great if you could fix that. If you need help, don't hesitate
> to ask.

I have this script that helps:
https://git.kernel.org/pub/scm/utils/mail/kremail.git/tree/tools/rebind-modern-hash.py

It will give you simple gpg commands to run to rebind your SHA1 UIDs/subkeys
with a modern algo.

-- 
KR
