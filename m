Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E928C35979
	for <keys@linux.kernel.org>; Sat, 18 Jul 2026 12:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784377645; cv=none; b=QwsNA0gU8BMJJJYP4MccRm/e6Id9P3TAdNYW01p1DDkZf4uOoue3vI4Sgztq7NVLZWrc0acbWf/ykyYK08v41pMfq9rt8QNiYcl7EBgVJpOEoWJ+gAYBbNxlz3APaukxKJHtCXUPfufkRD+phZ3M41lMzs/CN6aszVSXxPtHguo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784377645; c=relaxed/simple;
	bh=KKqbv4SY5Z7tcwGti4egXRAd3XHTQTBuekYZHPWoX6U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SeVT2PvXfvaugFPVXqD4yQpE22ru1jdWlfnm/5YPxaohFnAWcF/FT/h9AmqwPcWx9Ahzt+NvR7NrxcDXHY0HZ9cy+E8zSORhOyUXB1M7eLHZ3JQsUnp8byMmN02gZGZQ285OKd1yHXREsPAs+/dBgtrK9AwQejuc6GKs+Bbuecw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=LbsKL6cp; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="LbsKL6cp"
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-49545ba3d4eso11764875e9.3
        for <keys@linux.kernel.org>; Sat, 18 Jul 2026 05:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1784377641; x=1784982441; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KKqbv4SY5Z7tcwGti4egXRAd3XHTQTBuekYZHPWoX6U=;
        b=LbsKL6cp5nqvLVnAcErb+lfyxwn8gjEweAIaDpgnRSadxZvF5X8V4cSIt52jg6X/2B
         KIB11Fo3kooPCb33YyWTob+QARebvHo57rTKzX41zlmM62tP99sXS4vTqM2h04ITQ5/X
         E675onFYlhByRZkdxkcY5XWRj2CgmM1SVIlaqiQKWutqScidbpjg/+zefEf5j76d89WB
         /5uxk55UwNKR9TOWEdYOKQqg1FKdOty/mXCrfhFBCrsOJ+Avney1Bjrzr0YKIIK1UjIc
         qo/lQNgUP++DNrz/igUkCxLA3chhvFiWw0jDSn/k53CvDpJ9oNZM3WQK1hD+rtVw97Np
         CR5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784377641; x=1784982441;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KKqbv4SY5Z7tcwGti4egXRAd3XHTQTBuekYZHPWoX6U=;
        b=sW5gT3xyuEi5tGcU+1xS2UTfG/iRgQwY2npyh2i5JHgpltMm7jG29G3EqhO55HSl3q
         77RoIgYAt3rrB3tEexx461ppUdnhS1qNm3oDLhvwrff4DwqQQiJG+EWKV6Cu6924S2oi
         2DR1U7yi2yrjcgmU8mk/H/kCWmO8WY/XyVoK8kSO7mwB7GHeYJWUJ/ynD1d6mVyx5r27
         DOrmif4ivS5l8vWrXwVrJ6EenM9vBzUcATPkpvMOenvG8tJ/GBEsMz7N5kKq7f28VNZT
         ErHopQV2mlp92hl6OBnIRr2JvjBu1jrgwzTw4f6IFKSI9Oz2Pf4ilOLjK2xd/uFGZ+SP
         y5CQ==
X-Gm-Message-State: AOJu0YyAWoZwW/TSnc+ibwsMkBgVNamY4Vh+dbWmwmE5xNy7fUEfEhbs
	HTxQcdjDfpsGele1zT9IIFKwF30QYT4GghtSMmB6w+gU9Iagz3oavSJl61qsojueGLhVAQBzFof
	HaDwn
X-Gm-Gg: AfdE7ckWTywdIzDTk98+blP5uerXTloGre3rQga3rABnm1jfeXyJXqCYQy3beo2NuBG
	xdU1yh5GoiIpBfPuKvVZKeQCoHPEVP+duWZnws8WLjNavh69n1JxJ00OHpXguc1KDHSe+SYK+C5
	Tc0S2scEc3dv7gRpsn5FN4eYSvLF0YhR5bShLQcgG6IqgQlHRDsw/rf6wFp1rmIJdbB3h31MNn+
	714CIzkGmZRsrM57Sm7cbSluUN5K2MiP5P5cJcW5WT9tH+uLDIg8hzZoS04O5LqCDoHxEQIwZLX
	d/xQz0cUrvmqjYm9fwhWNk0wLmLAE1poALXqqBGUl69FgacpF41qm9kJ2eT9R2Em2zjoH3eOFpA
	18yhz9TMga3H7cyf9G1pBqjQGeR1PZAsLUtSR0VzEpN6RrjDJoadLPF/bMwRPK/PKQGzYORs1jw
	eE6aYHM/w=
X-Received: by 2002:a05:600c:c84:b0:493:dcad:84da with SMTP id 5b1f17b1804b1-4954a3eec74mr78014505e9.1.1784377640584;
        Sat, 18 Jul 2026 05:27:20 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-47f63e49acesm11427556f8f.6.2026.07.18.05.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2026 05:27:19 -0700 (PDT)
Date: Sat, 18 Jul 2026 14:27:17 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Eduard Zingerman <eddyz87@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: Update key expiration date for Eduard Zingerman
Message-ID: <altw4Auf0UYm2rXv@monoceros>
References: <cd3d8cee07a3767a0994d19cb767bd89f000a17c.camel@gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hw4s2cy7yhytpgg4"
Content-Disposition: inline
In-Reply-To: <cd3d8cee07a3767a0994d19cb767bd89f000a17c.camel@gmail.com>


--hw4s2cy7yhytpgg4
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Update key expiration date for Eduard Zingerman
MIME-Version: 1.0

LGTM, compared to what is currently in the pgpkeys repo the attached
certificate only has a newer selfsig.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

Best regards
Uwe


--hw4s2cy7yhytpgg4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpbcSIACgkQj4D7WH0S
/k7Prgf8CXSRUOGnZgZeFrmhhE9QFuzEKXawHlvvg2tbA+7mhllDlMHu3CGcV3yk
aZ/XVH7Tdo/DHakTYDAA5s5UM3TK/3nLX8vcWLk9GVx/i5D3igIDP5rKxSCiEIf/
Prt6SaaZuSF+W7NZ6gY+N84C33ix30jCnq0SUycSIPYi1nyxyjhO958wTJQkU67+
hZJxgvY1IG2Tv4po+r/dEwAMCza9zzkAXVZZf7Mkv3LYA5iqmLL2ttPZbM2hWF9N
MdmCjmrLmFu4r8bVTu4OAlWf/5a7UHs5Hmy48oHjs+73DzvAIa3oAUccITO1HVcy
7rcOuM7Ae6euwK2ijoEcjQffWNjNhQ==
=LsYo
-----END PGP SIGNATURE-----

--hw4s2cy7yhytpgg4--
