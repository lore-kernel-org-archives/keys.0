Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFAFA3C1F
	for <keys@linux.kernel.org>; Fri,  8 May 2026 22:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778280288; cv=none; b=LGxrsaGmMKizqCwBGCCwDsn/bfI51ueY8ALQI1tSG4WZdv6dxePAV2160XlhcixD5GiqgmGumPj9pcGZtAIj25YTxf8RarzB3nWiNIgZVr24Ua7jHmvb21zbgXFCo/JAfD9W9nWLty0Wtk2WVj045s/JMR43VGZT3pyF4A41N98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778280288; c=relaxed/simple;
	bh=CeiHT21WKBmv0Cvu9C7REMwRQnrgJR14D7GmBoJEgpc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tq8T4AB6uemWUn3FEYFs+Rr5Me97fURlegrJsgS+3p3FaorDAnlcvVvJPNotNIlduphIw67YbwGLSK3BbPrnDVrFj3o2ZDrOFGeNFGrMMnDSY/CoYWlH92biVX/6xvbCcYmppLWU2QvW9SSKAJz1Qm4Hf3pZmGTuQvygNQDmEVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b=f24sKAMf; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b="f24sKAMf"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4891d7164ddso15564685e9.3
        for <keys@linux.kernel.org>; Fri, 08 May 2026 15:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1778280284; x=1778885084; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CeiHT21WKBmv0Cvu9C7REMwRQnrgJR14D7GmBoJEgpc=;
        b=f24sKAMfEqYSE4Vta2XYCeTjVCxPYiUi7t7ZliwdsQfCrfu31aDORbMZUO6phZhyM7
         rKMfTJEVZuAy/jLLCrEVXs7yuVuAgzb74n8ASdZUMlqm4BmzoOvz7uYfpt+Ii7/C3nNL
         STCMqx11YbEZvKjTCCeoScq6MgsL5i5pB0/tBNbx8dvyfyErrfzotuSXo3hjrKTpYXXr
         aSisFWvYXvjLiCUwq6mqJryKY9Q4k8/Z4abxs/4Y2n4iNMjHAstq+61/S6PVanGQH6KJ
         UcuKdEdK2BH2eeIOkLK+vtrIeMtIYCyHmwGvq9gLaRghDyvlBVit/J43EB0YCowRBLl9
         3Klg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778280284; x=1778885084;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CeiHT21WKBmv0Cvu9C7REMwRQnrgJR14D7GmBoJEgpc=;
        b=OLpcALKN7dvban6q1rbn4wlAEYqAyrq50PvM3fFHIdYU79kcj8uQV/pvG5NPlk9W/J
         1lFrUlEIdYG5pWNUVVmOqzrvbnQAnZNw5861l0W3AJpevWqePoDkm3TFUzm+g5JKpV1A
         6HsAVESHfzKzDx+Puu8AwwIk23RoFOFavtynWideNvZsQ1UqI5cKoIyGwFGLBWutAhbJ
         jeIS5BsxFzYKbAVEeSYfic5iQCkNQwQhRKuys3k+ENOFARfCdjfAEc8F3HJ2HupsthtM
         lxJ5b9qMFeKopk7jN9Oqpca6aEE1lsmjcwDaNwNTWQLpFpAOimiVdyDix3M0d6Sy/yGB
         Cc1Q==
X-Gm-Message-State: AOJu0Yyn6Cj/u6Tvk3EEA++hR0REO0+BbH6Ce0pINIkrXglbS/CAJ9IY
	Ky0zlGj8tUzPXL6F8POY3t/NT6bfOmzpe9aqBR0djaZTTOI2fuRAcUsPITIfAAS36mENZwIHFQp
	UuyaPv4A=
X-Gm-Gg: AeBDievXGr3sk48LPeoticIBouAPupXmh4rmZz7CiBkbcrdHphuPoPn3uaN/PN8hOYs
	v5f3Gsni8hp5LLWPqaO0OEJfudAr8R91Ln8+XZ7gEx/E+JYfGLTCir6DmKcjJhCXjieDrwO3QOh
	QVs/6iBOKJkosVJ+EDhw+jfkroIah2MAjEx2Je5FCDEZryaZW7thIZ7+uhcxdpkJnb0xTgV3TSD
	sR2LNL3QWr1mrKTIvzZuysWV1jSz5mhY1YbUfJUAg8UCmeo6H+WiHaucDrxXcryTsxhaBCq7slK
	R1+XBVCZ0rFhdUOgzSYIh8V1ti3zBxVC5lnw+fUNliH0/QXfJpEebzZ97wF+TuZIK8bgVEye/Ax
	kr+Zwrz4hL5TiUMTp5D8R3uuqfVMPxKdCIphH0SiDzoHyCmyCMW2D8YmEpDish0gImLfCKB6y6t
	ctDH12/e+TWKQU8rIhyX9s+PwPls5avVg5RqtQSNM=
X-Received: by 2002:a05:600c:a08b:b0:489:1ba8:5bf0 with SMTP id 5b1f17b1804b1-48e51f4119bmr225485935e9.21.1778280284141;
        Fri, 08 May 2026 15:44:44 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-48e6db01122sm13596405e9.6.2026.05.08.15.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 15:44:42 -0700 (PDT)
Date: Sat, 9 May 2026 00:44:41 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Eugen Hristev <ehristev@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated key with new UIDs
Message-ID: <af5m5fADczdzu2qC@monoceros>
References: <8f9c782c-6219-4d54-9d58-5b6ef1c76598@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jae7okuo54rcmdxx"
Content-Disposition: inline
In-Reply-To: <8f9c782c-6219-4d54-9d58-5b6ef1c76598@kernel.org>


--jae7okuo54rcmdxx
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: Updated key with new UIDs
MIME-Version: 1.0

Hello Eugen,

On Fri, May 01, 2026 at 10:25:14AM +0300, Eugen Hristev wrote:
> Added new UIDs to the key

`sq cert lint` reports about your certificate:

Certificate 1EB31E020EAC2FC8 contains a User ID (Eugen Hristev <eugen.hristev@microchip.com>) protected by SHA-1
Certificate 1EB31E020EAC2FC8, key 358A147553D25DF2 uses a SHA-1-protected binding signature.

Would be great if you could fix that. If you need help, don't hesitate
to ask.

Best regards
Uwe

--jae7okuo54rcmdxx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmn+Z1YACgkQj4D7WH0S
/k6MWQgAk7oOgiM3eguQri60/nkRw1Pj/zuG5EUyQO5o865Q9tIx2OLgGvBGFG2c
ze/S+JCiOFVIBZOUk9GkL/b8uhDmL+IdiIUS6dtbUT7J0kSw0Bs6X0krqGs9JdUU
sYUrjkKbsSpwALbgYYFizlhpH3JwBTKfMm0NOgZQabASKy4L29DJ3/YUnWLx2m/G
hb6/gZSg3kL6Xa2/lhqw8Dw4hS3xfwNAh4hYnAenVDPnp/n480Rs2AdIavBUe8HO
J1deGUHUvPHv4/P70eVSRaZk/ivbhUrYup1IbKTbszFYxSXP0R5E5meFhJ+2uo2N
eYXnlSWIC/KrDXNGA/j5P9Mygan6Tw==
=dExC
-----END PGP SIGNATURE-----

--jae7okuo54rcmdxx--
