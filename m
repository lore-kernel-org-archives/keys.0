Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C58D18DB0C
	for <keys@linux.kernel.org>; Fri,  7 Feb 2025 17:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738948187; cv=none; b=AI8Dv92rTC1TP1ZePrjMfy0YKehLXGoBmbupTbFczzHQXectRXiiSToe3+KVPSLQfKtzxnMl9c3f2VLEV3Kam5CIoGgp+sif8tFc2WGOh9pUCeu4SY8Tx/PC5Fn1OpDdfUr5OZv9edWmuBcG/eJhQMKkhAVIXSxGdAwlDDYEtUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738948187; c=relaxed/simple;
	bh=9IsOIWTOlH5abxyI29pg4Z+rMaH6sJtYtG+jTXRZArk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=u6s0ge9+cmasGylV3BI+B+YjCY+xXTtA86M7GZMRP054Mx37/0tcmb9av2Hj+MnUFQfx0p3T+GpnwwHRbdHsd+TxfpN5BCDDrn1/yfcFWyO5C3mGNrUdvewTn3YDmwUahvfAqqkJdn3slUzyW02u9SyMLR9dEGfnCwoECsOBNZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qYaqByoP; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qYaqByoP"
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-38dd0dc21b2so171025f8f.2
        for <keys@linux.kernel.org>; Fri, 07 Feb 2025 09:09:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738948183; x=1739552983; darn=linux.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3jZohKzV5whB4+46pkuKiM2FAX9AmS5jlMd7L/P35IE=;
        b=qYaqByoPcvXJXxPZgMbIam2JGp5sfPETR7DmSMJFC0wY/U9esBL670Sm2guZpZV3aG
         yJJuC5AMzXtBjvTOIDVF99RMpYZo9dkJHVRyz7KdrGhUMesEhy/PrvLpCSOd2CI6Qj+s
         GWgWS8s1tLDBsIoUzguHoFghkYZPgfvnIO2GzuHsF7/lo9nXOe5clW8X6A+AhmzscC3I
         tyeXWvlvboQ2O86gVb6s5nEwZ6UJlCGJZPdgulSq6Utt1lBlNcKJcBbl6BQUYSPHAAoy
         gs+50/6X9qKQNWkR1WaImAI4iQ3yzkKmGhk/YF5+VdbWfuxjwIA9VQ3Fq4I9VTnXCTSb
         87oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738948183; x=1739552983;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3jZohKzV5whB4+46pkuKiM2FAX9AmS5jlMd7L/P35IE=;
        b=aQJzvPWI/NW1j8QjhF71clF9eoRkN3CqesyblpD3kH6OiM+QPJEKm31U45ayRRD7kd
         Ty1519AxuH6jvYK4gqp6XZyj2ejovC63CIoXGGCRZjdRPUtmR6yjb6FY8G8iT9HA+BD8
         Eq1RGcG7CVeG3SSq+kQ9TIlp6kCJfaTukAjRpfug2BWJcbaOmJxDP1939MwXOefWcO4T
         FcEWwrnZWh91xPX5n3EPGvQuKZVqYN7hf+vQHjBQJMn2LEMu4zkN5F9kK1+Vc6MwWaD9
         GskOj8hlT1E8PtBlIdN+m9FpaDLseGFRTb7Inl2/mi/OcW0heQ2WoKT+lyoL7q12leRJ
         PsgQ==
X-Gm-Message-State: AOJu0Yyw9XP7H647KJzv4Le8zJlXXKAoNIn7630sGAYoi6gZRzn3HD8d
	E4dNDHr3tLFd8KcvqfJqvOJi34em1cnHiydR3P3bLqroiNt+3Xewc8MRPgrKztA=
X-Gm-Gg: ASbGnctDVMXM58A5AXZwadPd+vscwzINTu91N+kaJSQnmOn7MWbZskLLQbtMrnVIASE
	oDL9EHqPgLK2CYfsSvX/KKDXj8nFA8Qjgw1+9/d+svnc4NZ4tUY/BDJTG62uvaxLz13D8PgrO6G
	yadN9+YQVnVDmRLLSzHd6DwNeNzzkxrAyTdOhbhQ5XIeIP2abD1oGxuD2vKlkszHY+KxahBIa9c
	OQIT6naoZgXK9OO+8rsZPHJQ5d1FxHIwbt6nnqj9KqE3+XrD7If9pReOLfou0PUwQWGU1LKXDKN
	AuNGHlVhb48+CLKJnPjkI0sClhluGepoPaW+8aG+VQz9lWEOnFsojGZlug==
X-Google-Smtp-Source: AGHT+IHhh9EBuqq65O9ZB5XQtK80znfxdi49szAJialoY9m2kbfujhF6HCilFrZ2Oj5S7/HBxKcxjw==
X-Received: by 2002:a05:6000:1447:b0:38d:b547:6650 with SMTP id ffacd0b85a97d-38dc8fe575emr2951467f8f.27.1738948182699;
        Fri, 07 Feb 2025 09:09:42 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc53ae9c0sm3668658f8f.101.2025.02.07.09.09.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 09:09:42 -0800 (PST)
Date: Fri, 7 Feb 2025 18:09:40 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Keys using SHA-1 in the kernel keyring
Message-ID: <c7klbj6xvzcfx63gid5iancjg6cv4krgm2wk6wfijwebq7bxtr@songleund4fm>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vuv7lbknvshzkc5m"
Content-Disposition: inline


--vuv7lbknvshzkc5m
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Keys using SHA-1 in the kernel keyring
MIME-Version: 1.0

Hello Konstantin,

sequoia (one of the alternative OpenPGP implementations) has a key
linter tool that analyses key material for "issues".

When applied to the keys stored in the kernel pgpkeys.git it reports:

	cat keys/* | sq cert lint --cert-file=-
	...
	Examined 643 certificates.
	  0 certificates are invalid and were not linted. (GOOD)
	  643 certificates were linted.
	  305 of the 643 certificates (47%) have at least one issue. (BAD)
	1 of the linted certificates was revoked.
	  0 of the 1 certificates has revocation certificates that are weaker than the certificate and should be recreated. (GOOD)
	51 of the linted certificates were expired.
	591 of the non-revoked linted certificates have at least one non-revoked User ID:
	  284 have at least one User ID protected by SHA-1. (BAD)
	  209 have all User IDs protected by SHA-1. (BAD)
	563 of the non-revoked linted certificates have at least one non-revoked, live
	subkey:
	  267 have at least one non-revoked, live subkey with a binding signature that uses SHA-1. (BAD)
	228 of the non-revoked linted certificates have at least one non-revoked, live,
	signing-capable subkey:
	  10 certificates have at least one non-revoked, live, signing-capable subkey with a strong binding signature, but a backsig that uses SHA-1. (BAD)

	  Error: 305 certificates have at least one issue

This is nearly half of the keyring that still relies on SHA-1. Among
them are the keys by Linus Torvalds, Greg Kroah-Hartman, and yourself.

Fixing is as easy as:

       sq key export --cert DE0E66E32F1FDD0902666B96E63EDCA9329DD07E |
                sq cert lint --fix --cert-file=- |
                sq cert import

Given that fixing is so easy and SHA-1 is broken since 20 years, at
least getting the high profile users who regularly sign archives (or
keyring commits :-) looks beneficial to me.

(You could even argue that the old archives should get resigned, but I'd
already be happy if future signatures will be fixed.)

If you agree this is an issue that should get fixed, I suggest the
following procedure:

 - Only accept new keys that the sequoia linter is happy with
 - Notify affected users by mail with an instruction how to fix their
   keys
 - Two months(?) later throw out all keys that still have issues.

Maybe drop the 51 expired public keys already now?

I'm happy to assist.

Best regards
Uwe

--vuv7lbknvshzkc5m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmemPlAACgkQj4D7WH0S
/k6p/Qf/QwDREEY4n2cOP7CSmWmulvm1JE2Zj8wE45wsw86WvAFzVwFNbSRqvcbT
kWe5Nd6YlQInvDpEBjF5n3Y+vBN6CORhATgU1BwLV1YAtqGJ4qh2e8ZHB4SX21mB
nc3iIyVKd4VLXUAIJtLyiyhq8yi6Gv7sWXAdCfiA5B0glITlocyLv3qXK2AzzxZk
dxjKvnbJJRRIjoqBLnSCdn+BcuiGhxxMJK5Wh6uoJdkxNHU1UgorXkWjB1vJPVH4
AiJ6jhGpD1fGY5IvrC/SbyJ1IJSUI2fI/IB+nHg6YwygsOhDBDko//Y+FeUFEYfR
2sW64A32qnEp1FFSghtSsWPa7fWDDQ==
=uaGm
-----END PGP SIGNATURE-----

--vuv7lbknvshzkc5m--
