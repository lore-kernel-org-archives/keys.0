Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93F3255F31
	for <keys@linux.kernel.org>; Tue,  9 Sep 2025 08:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757408104; cv=none; b=GIbpN6j+tLb6Fkxx7Lb5PUHnIA3b+AzgeBlD2MtPmRQuEv3Llxwkgj/LKIy3+/ocs1hdZRdnBWw6On4+/GtUpAGAq43ErEZ1JyIev+UHN9ZGymdFfrX4ejKrcObDsSX2lLdlKuwMQUuAjqWQsFGP1nPbkTYexcHRkUMLZ8j5NJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757408104; c=relaxed/simple;
	bh=ifEzxQBihFvSEZtk6kIimqT5BcTkzeIXlyRsneq8DCA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RxIpwWI6j1/231iqT65EL9wBV6uWaz0BLGhonCeS5UBTbiJ/lgiRLufQqKziznhH3ZV6+sTzpHP7wXLpCjrlc59H297QhrBIrIBR+duyI6Cld4ue0uBVtLz0fU0YSEOQkylkdXTrDczKJBDLJhbYOcUe31XRGUemdNBXtObqN9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=r2nBo05G; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="r2nBo05G"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45de2b517a3so20873645e9.3
        for <keys@linux.kernel.org>; Tue, 09 Sep 2025 01:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757408099; x=1758012899; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZiX+5hEDBmtRl/9W+lSIv3Jjz939th2pFtEym7mjlTc=;
        b=r2nBo05GELcyPmw2YCUK/wSHShTWCsx9ypKjMMXSs8fVlhH9IBwuHta62Dex8hUFEP
         YqZFr3k4uOck4TvUU4V89b86GrlVK0Sh0/KCF+OzfTzO3rqbg4QwnNtaWZvR5cepvZ7u
         HVIsrOxygnx/9AFrlzdBTtGpwAaYZ0hughaCKaA9DVt+vbr2TVybvVBUOmmvPZ+hXKf3
         /RtJeK0yOMob33HClPjJHcIevx7zv8x/HdY+TwS7brBM7abdAIkjitZUhc7fJT4lgOhh
         konu0eSY3PY7rLb/KDiXRe9QQ08QayvUSCfKMEy54sUh2vUv3OBqdcbtvi5TWhnE5lbv
         u/8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757408099; x=1758012899;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZiX+5hEDBmtRl/9W+lSIv3Jjz939th2pFtEym7mjlTc=;
        b=OCqWBSZYUXbZUXQOenZzN3Dir4LK2EbcxQufwZm1V8C7TiDKmE6bOQIJFydpPV4iRE
         RoDM8Ra/iRBEBOeStMiOiNd1B250DvCxiNuuxaahPi9Acewy/8dt8n5WZ43aGWfIf9pj
         lqbcx3a9Njh1vzTwwYfTX8THKs7Lr+j0F7bj3DZWG6w3cEy8qxHdxHB0rE1LueuCRsF5
         hplTWeNCMC2gJIHVNYycF4oh/VqHU4IS/AkmRxNxr+Z0rk4hXzjIU7yPBhYLH1fYk+d1
         SoJaPkw/Az1WUlD/yPN29YEtqTh15Pa7QAMLSlcrO+dRkIhuxMBd1cGaCGj3x5IdRQWy
         Cssg==
X-Gm-Message-State: AOJu0YxamlOe7M4lgVukSe/8kD4+S36T0Gb7zjIHTySL7dqI7uMUDQOE
	Ibnntwvqbukw70In/eylUQzVyL9u4SMwOXBRsldFLeyy4nDMSuVK1p7l9Hs2L0QZ9axKr1H1pqO
	c4u9G
X-Gm-Gg: ASbGncsSo8ft+KdIAI/LY0Bxq+5W9quxlL4Mb7yDCrnOjvjBNVFJqQ8e56FuS3kmHBF
	bFGBYJFtEHPvRyj7wbjmpacJ7VRY+CQQ/5VMOV26UbvQwwoUmPqMQJLHYQkYrfs8LoKWWyS9xKF
	noY5xvDKvdT4wmzSKqnX/KsHVRCXqU41KaOktE3Q8j8m1F/K7QACIZgrZbU2K80NzGCmMmCptzP
	P0kVaoow4heBPAkJDCWBnxz1BHITQVwE5z982Q3LqwEYCbt002NnYzvH0isswv6W73Hw21yVSI1
	w+8Eccj8zKt9TJ2IZ7SGh/pvul7dm0Ebtb8HDgPKye3KHV//Wb7C0oSMe7nKrEM3dhQLgGEGB5M
	R6ZdCzpPThyBzJBfXiHZ1Pt7L4lYKVTUK0DEP2lJiCxj5Y53BJHf21W4XUUVb6lWO
X-Google-Smtp-Source: AGHT+IFXQkIAR4BJQbGzmKAqwag6j5ugjHWQZ/1rqftFNI0DCH5agC1A5ZtvAziZfDrtGWo5m1s6qg==
X-Received: by 2002:a05:600c:1f11:b0:45d:db2a:ce4a with SMTP id 5b1f17b1804b1-45de07ee7b3mr92672845e9.9.1757408099212;
        Tue, 09 Sep 2025 01:54:59 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3e7521ca22esm1853378f8f.18.2025.09.09.01.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 01:54:58 -0700 (PDT)
Date: Tue, 9 Sep 2025 10:54:57 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Paul Walmsley <paul@pwsan.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for myself with new E-mail address added
Message-ID: <nnun7eitfarfpqsnt3gmhizmcyfcwtm52kkqtdn77ndziue3gi@b4sslvefo62e>
References: <04195f9b-dae2-eac8-d109-196fa5cfe872@pwsan.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7lq3gldqslylbgfh"
Content-Disposition: inline
In-Reply-To: <04195f9b-dae2-eac8-d109-196fa5cfe872@pwsan.com>


--7lq3gldqslylbgfh
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated key for myself with new E-mail address added
MIME-Version: 1.0

Hello Paul,

On Thu, Sep 04, 2025 at 01:51:10PM -0600, Paul Walmsley wrote:
> I'm switching over to my pjw@kernel.org E-mail for kernel work, and have=
=20
> updated my PGP key accordingly.  Please find it attached (per the=20
> instructions at https://korg.docs.kernel.org/pgpkeys.html )

Your key fails the sq linter check:

	Certificate C78FB10D0BBD2A4B contains a User ID (Paul Walmsley <paul@pwsan=
=2Ecom>) protected by SHA-1
	Certificate C78FB10D0BBD2A4B, key 7C50FF6DD228D259 uses a SHA-1-protected =
binding signature.
	Examined 1 certificate.
	...
	  1 of the 1 certificates (100%) has at least one issue. (BAD)
	...
	  1 has at least one User ID protected by SHA-1. (BAD)
	1 of the non-revoked linted certificates has at least one non-revoked, live
	subkey:
	  1 has at least one non-revoked, live subkey with a binding signature tha=
t uses SHA-1. (BAD)
	...
	  Error: 1 certificate have at least one issue

It would be great if you could fix those.

See
https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3moty=
yoo3@7vf7ip6gxyvx/T/#u
for some background and a manual to fix these issues. Don't hesitate to
ask if questions arise.

Best regards
Uwe

--7lq3gldqslylbgfh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmi/614ACgkQj4D7WH0S
/k6SYwf/VMrZMykupWE41YZcUIUUqPJh5gEj0uwVlk2neX4xsS5WMxlDUCdZsS1O
WA9e0x3kIerEOZkAkDCbIgWZUpUI+JEgchOgAhJlC+gnCkGxFxcGJ9Z8HBGXe+fE
ZV8zuK9B9ZINgrrR2zev/0TJ7C4hSuckOD7l62PMSdnrPhBj/pCAC+2aPEqkdJtr
sm2vwUhQkNDcgmuIFMF0Q2gTTiP6cy09bcmP1acsCxnOSNRZb1fJFC6Z407F5Cs9
3b9ufQmBBfGd6XXfYrWnTX/SGmrvB7lAojbAEaC6KA+5dUBg6B2pmazFLrT4GT9e
Xs+HUQEhMuY91r9o6nhtEfGdi+re0A==
=kWuc
-----END PGP SIGNATURE-----

--7lq3gldqslylbgfh--
