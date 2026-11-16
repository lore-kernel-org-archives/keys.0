Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1794848355;
	b=Y0r65xRg5K/UuljSaY0xVE7rAbbCKLyRJQPUWsbMysJ5tj1yzDFW6NIWcx3KJeilOUCz
	 VvCcYoXSK6cW7T55dzIb6U9KuKs4OzIngshBM3Ldamv/iI1H0MphDenURDmQWvVZZTGjP
	 DN7DNztL+13fvx5D3wgn91zSiaOYEPFAcRKSUnGJ4rU8tCKZN/ABpEuvtayQ+ffeX96Z/
	 4Oc8ZzLbXWEEE9uu3u5ZbOoer6/cPr36y/LFWl631lxk/I31GOm/CqI1bDTJbgXuSq+uI
	 PyCsmvOjO7NuqA9dMTwVRd6iSwUCom96Nj7xoLokMRAkrAKQV1hXlycu5+sTyH4OZUw==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794848355;
	h=Received:Delivered-To:Received:DMARC-Filter:Received:DKIM-Signature:
	 X-Google-DKIM-Signature:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 Received:Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=vRoWxv89g9haElawhEM0+s8HTd7RkGxml3sGQ4UBY9k=;
	b=M0RExjQ8I2R8y/rPSvOvvuacStHsRfy35Vok/0lw2fPR2TCNtZ2I0uVhrlm5Sqcmzpn/
	 /bqdAyKRMAZjZ/694oM2AiLyU/WJS84sj5VqMN6Ek52bt9L5jYp7tSXiEOvbDMsDRORw4
	 AeLefy7yucDs3AGds2fKko6fYpTVygMR9E4c7UIg14jzyJ1mFZpU19kHvM8Z19V7CMPVY
	 NsnwJeAAliGUINgdqLv5C03sxZlhKLmho3UcGdqBPWYrzMoaKYfXvyQQU7jQyF3pFMfzT
	 +lQGmr6RHfZIbpoqUVXp3M6WWm7TPn7KlREx7m5mO2LAtJ1wCefN4inLGuoOycWaQ7w==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=fa38kk1b;
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC71606A88D
	for <keys@linux.kernel.org>; Mon, 16 Nov 2026 16:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=fa38kk1b
Received: by smtp.kernel.org (Postfix)
	id DEAEB1F000C9; Mon, 16 Nov 2026 16:59:14 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=209.85.221.52
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794848354;
	b=J/i4aGaC8oHF3VNdN/XnH2XaFaX7GKll9Z08pzvrNd2Pp7gP5Mq5XIXDxr0ejC42RbQQ
	 j/3kKHeUnAlQr7PeHuY8rrg+GC2KxmW4NH2joIpYDj+tQcDEjVzghOltc0TvFSDdT3yj1
	 6dly2CIeqwFqmyTJsOyybLu1xWVFr6/pD8CxB+Z9bzDvU/7h6BbRrGPDCRvi8NtlxSvBH
	 xZIWlLByy+hFunKiWnWPBZ/UaluFjLZDgoeiqtFxsHq0za13cQUIjMDUJDuBthWwRnzL3
	 WTChjsFg7goZrLTniwA63Lv8luuJXH3dgOyhmou8r+lgUX03nwuQB2bq7RfgkZ/V3eA==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794848354;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=vRoWxv89g9haElawhEM0+s8HTd7RkGxml3sGQ4UBY9k=;
	b=XV5z5VVgsdgHRXhFaUJsRfnIVQPvfVCcZ7bfi/ayg3HS3Q9LhhMTxQwsBaNwg5b/zeNK
	 DqEu0qF6hqgzhCFq+cM4lncpe5SjWteOlZ+BOFbDMUi0TJQq2FOK84k9IPXdgBhQCu2hT
	 JEkaTbkZUGaP/wn+EpYKJKNm8sirTn4BBZiQsqWHQkJaiC64uroyPPxdK8TA8Ucs+NI+e
	 uDXRPFCcKNIceynKDPe3sPfQwJktD51wc4OpO3eeNFMKjumnkyAIRbhHDEOKIYHrDWF+B
	 FrnDV4qC5gV1/ukRTXBwBBwu0W6n4M8pVzx1XKs3OpxupG1NAEX0DkUrCAYdvi5aMxw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=fa38kk1b;
	dmarc=pass header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	arc=none smtp.remote-ip=209.85.221.52
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id A9B001F000CC
	for <keys@kernel.org>; Mon, 16 Nov 2026 16:59:13 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=fa38kk1b
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org A9B001F000CC
Authentication-Results: smtp.kernel.org; dmarc=pass (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-492690dd5daso3569536f8f.1
        for <keys@kernel.org>; Mon, 16 Nov 2026 08:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1794848352; x=1795453152; darn=kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=vRoWxv89g9haElawhEM0+s8HTd7RkGxml3sGQ4UBY9k=;
        b=fa38kk1btoIEttcxsINwZWX8vUvFzqdpjH812/9NgbXIBRDqokX6uife6ovx9FehWI
         HkSl0JSg5KjNPeOoq4b5HKFWpQtaxUCGZVLvDOgop8BEYWx6qOSvKGNytNSwo9ksaEzp
         XgbS/lTUHKQGnJASfspbhFBl85P3skqZV2HJawqor6tw66XVjxHtoz8w+AS3XdxPLTuO
         QGlBACpgX3B4w3zXzTS+Cjju/vPOuNW+JGpVcc66DmjbwPRKlyu8fVod5wwyvFmz0S8B
         dzKTVnJkoPhQNQ9i+aZp2HHElUOz8w5Q1bZRncSPI7f1YNWfsHJur54KfYph57WFjtEm
         ZCxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794848352; x=1795453152;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vRoWxv89g9haElawhEM0+s8HTd7RkGxml3sGQ4UBY9k=;
        b=OmzeRBZzH8lGdzT7jo8lsSx++oHxjNo8bOzOkl/RBkFpMz8XVdWOoYxiXBzKcp6Rhy
         f5yHHtfgOxMDNEKOeASy57TShjLb4T9Zi2uXfT7FYJqZdWF6qq6b4XMYPBysg6lknyjk
         zf0Bq2Z5mOTP5i2Dxz1rxbHWgbo2PAC3tflwhMmlpo5RKnM4nRsA0Fw25EQ7EgiYgyOl
         izTE9eVddirVzqQRm63jjptwPmairFGJLaF+Y8nY1KXklji/1qLgkAwNZ8x4Yv0HwzOe
         IhWzY/zdkAi7xucKRiYfwP5vM2Mgvv+YBtAfb+lysJU7+MBLhKw18Z2tgIVktART1v3t
         uIYQ==
X-Gm-Message-State: APuU4Z/1mv0SD19Ow3ovHbsf0jzlhvx7iaL7aImDqv/8h6wCSU4FcH2t
	p7zl90fIdfIgERXgEC5Z/kFj9Z9mfYJbf1/5aGgpXahzEA2puvhQ8Arg2zGv16gHKy4=
X-Gm-Gg: AZFdTZdb1FzEiMZj3uG+5hamHCgSQVSvEFP5wn8qOzUkglLISdIcu/DMee/wMtCqPlJ
	jM1IjTtLkF8S5mZjzRaYMDgi4GkQMqxcIf2kxareQwC2Bz9P+wNHhfLYXseX2PJBMLAdG9xQ2sE
	dL3QSp634344FQe5rC5+aDNnqnX9uwYKPm52JlP0GDaGvwUEqqVxA1hnYUnZBY6fVs+JHEA3qSR
	hEJE0OBukOth6Lj7icdPciy5Iimwpq6Yfadw75fiT9lkwoSa7BN7kA3++OqekLMdHmn4Wf5lRVW
	0TT6Jt9t0c0uBbn6UNwD05KkuoUcZTxKiXUxSQWQuCR/3v5F3jKmB+L/whRY+NklN8j1EM3t1p8
	7tA6mZuDsmYjkyss0hawo3iEmIgvb/1AEwshriD8cU8OAMhv79w73C7D4C6IXOmaRrV/h1FwEEP
	U9StuMgyVPyUiFfbJ3tjuNmKKBThKBYn7l9TXkAhsHbPKvKuFDE0m0qTGPXieoJ/XozxZFwRbEr
	0CtMJbi6X2WyLuRwLvtqRSFlH2tEaRKr2n7B5s4r2+C5OYstLhH2pmIj/WDqKbFok82b2fbSP+c
	ImoL7Q+4vD88qPNbRd/g2Z59dJRMfniEmDbtqCebwzEkHAnwp0iIWYK0xEAu9xO34w+Gp4vHbqp
	MfQK/sB8/88eyAbqu
X-Received: by 2002:adf:e013:0:20b0:49b:b93d:9631 with SMTP id ffacd0b85a97d-49c71970581mr16630916f8f.48.1794848352004;
        Mon, 16 Nov 2026 08:59:12 -0800 (PST)
Received: from localhost (p200300f65f19a90439293c698a65b414.dip0.t-ipconnect.de. [2003:f6:5f19:a904:3929:3c69:8a65:b414])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-49c6d079a2asm21009620f8f.16.2026.11.16.08.59.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 08:59:11 -0800 (PST)
Date: Mon, 16 Nov 2026 17:59:10 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: keys@kernel.org, Juri Lelli <juri.lelli@redhat.com>
Subject: Re: New key
Message-ID: <avs1jP83CDmCDgy1@monoceros>
References: <avcPLMVwvkWUEpJe@phoenix2>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nljw6nuano2wiwqh"
Content-Disposition: inline
In-Reply-To: <avcPLMVwvkWUEpJe@phoenix2>


--nljw6nuano2wiwqh
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: New key
MIME-Version: 1.0

On Fri, Nov 13, 2026 at 10:22:52AM -0300, Arnaldo Carvalho de Melo wrote:
> Hi,
>=20
> 	Here is my new key, with an expiry date, signed by my previous
> one and by Juri Lelli.

What is your plan with the previous key (D65016F35352AA40)?

I'm asking because:

	$ sq cert lint < keys/D65016F35352AA40.asc
	Certificate D65016F35352AA40 is not valid under the standard policy: No bi=
nding signature at time 2026-11-16T16:57:45Z
	Certificate D65016F35352AA40 contains a User ID (Arnaldo Carvalho de Melo =
(kernel.org) <acme@infradead.org>) protected by SHA-1
	Certificate D65016F35352AA40 contains a User ID (Arnaldo Carvalho de Melo =
<acme@kernel.org>) protected by SHA-1
	Certificate D65016F35352AA40, key 4C6AB5766A82C4CC uses a SHA-1-protected =
binding signature.
	[...]

Best regards
Uwe

--nljw6nuano2wiwqh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmr7NlsACgkQj4D7WH0S
/k5RAAgAo1fOoBOzkXBkAzOJUEQN92B9xAiIJts4keb3q8Lwy2tbqOyxKfunqHLJ
NQcXwwXniQq7/t38Q23MgCfKCZmSnRBUKihnkEG363AHtgUjO7O9g/YlbPJJUxEJ
x2ZpLZnf1Y31We0tT8VjBJnVrGyluIEqBOz2Y+MukEDLEEakrZTsYnkGPrkZP0lL
bRJgNbiWQrSZG/sVgnc9Hc9gtDNKFAcUof0RLaKVCOCKAaJyEWsqj0pe6HZ6SzJD
zWWwCb3dw8X3f+pbfn6zjCv+xtZqKRfO/6EASIWNpLSuG3sdep+wHNSzRGwepKY2
zYsa88yaKtwqAZlTbLvYKqXF43bBVQ==
=IEks
-----END PGP SIGNATURE-----

--nljw6nuano2wiwqh--
