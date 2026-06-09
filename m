Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F23383C66
	for <keys@linux.kernel.org>; Tue,  9 Jun 2026 06:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780988125; cv=none; b=ob2pphWCRLYdQnbfAzaavDlwWmI5CtRRK6x7Vo39s3D9riK9M/pFR2OsvWhBfYKciG6RPS6AZFqJa8e8VaQAphxQYFd3erEcCyrIwwCWGC/vpQSaDy6hgU3p6gLBEcRq0vtvv492kx2nVWHbnhHBQMyjaVRVsS6ny/HhJRhFVVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780988125; c=relaxed/simple;
	bh=bZ5q9cktXvH/5+Cq82BKbeCMzM5TnX2hGCwUQn4Ib10=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mgolMOlgXL0zQV1xrXl8iE4Scu3zGtl4dy7xq0JPJbHYrWOgh3sO+m6vA5pA9pX54atTasHlZoeO3hmisj2PUlhdLoqxHFsZJoTgnQ4bDCVplB8CndkYVQKzmeiVysoacGvGSoK9cvKAbrhj8jgbonW9fH71J7oi0Hehs3zkdzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=W1+wbD8j; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="W1+wbD8j"
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-490ae94a89eso43318415e9.1
        for <keys@linux.kernel.org>; Mon, 08 Jun 2026 23:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1780988122; x=1781592922; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bZ5q9cktXvH/5+Cq82BKbeCMzM5TnX2hGCwUQn4Ib10=;
        b=W1+wbD8jToQslTRppxlKVObbg0fTObR8wYX8N19FB2CkD3BdOthqi1ONQBqKCCpzGT
         mLz6ueZiJqes1c/NYLGfCqsn2PXxqASKZW1VSkmBTKOTa85D7LVGkV/+hUCf8Rqeoc1N
         rwOBdtKroNr3vKFf2wkhW+9BYOnef7swC7GVe/Q+q1UxIJfDQblS5dENSmFgAgY/QlZN
         tV8qSO+q4Ld3E50eAv7CdanwntTsZzSgl6N/WeJBjaUvSXTh2ozmTZW4ozcKeXtoGw4O
         bUA5zrN7y8nBxBiFYQJ1KCoon5KHzI5erozaWFbl6akeuDoD3AL5A16wbjQ0cJ9tOEQS
         /fDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780988122; x=1781592922;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bZ5q9cktXvH/5+Cq82BKbeCMzM5TnX2hGCwUQn4Ib10=;
        b=ETLvAvoZgqv6P/bgRKDN7Ha8rsdYQbhB8blqCCdfGQwDD5P2i1HFEDu0ZQ6vejqDxQ
         /buWW/XL9ArCuDbKO99sX3XaruFCftbrDpMFycwXl7j2h1p4vav5rKRiz1M80DzUCAMY
         dj9QRUJpgpRWfwaJBRbNleHTtyqBbBePcHRu2mvB8O2zZzcHNUnhuXNDwfshu2BsZ33t
         jSWKg9XvgDGZvO9Mthl5XhDGzYYpNuyTf8wlO1hRGduTgml01yqo9yeP9XlbkVwe2SUl
         y3imakx5NB2d2OPULkXmcZtaed6wzMgaceSSovg/mQCbhhGy6IH93didbF+GeNkpCf8p
         AMCQ==
X-Gm-Message-State: AOJu0YxBNS75pdDD5gGdTzIu/la3c8om8zYZXQYLbMitmzklhwft7P60
	wPGNE8K9xau5CL/+7F3Dyp3kKCs4WpI1n7A5PKqR/GJMmZM59uJvFEpEMoe9ZigHh4c=
X-Gm-Gg: Acq92OGaqcuqw6NJvrY6LpD3BdSKl+7QUQaIft0mukP9HsxGCa+J6mbEu/XPeNj6+KG
	2g8jmViypZpkHuPTbg+tT4ivaGbPbGpFHPJQI1SMRen2O8bxxil98y2NSx0LJR+JRsmnsNPtAv8
	1ecfEMIBNozph+wKjGvPF7hKnyY4WJwqSFRkh4KBKqAtjagw0v8/oZlFu1Q1krx7U5PKE0+FH4c
	uF3x5wy1zELM9ciyBWVn+z5idR2sMDegkblXT680Np2fm+X68uir8x1DEKpz4wTp3uSadk6a/Fv
	YbFFxRaQZI0xM03QyuYNDygoYw653hhyuSGmCrmGVRktw00vfAROD7kQDURokQubB8rR1ZLoU9P
	oo2JZjhSSNQyd+NC2N8YaGlUrb9iwGCnqwJmCN2yRRxaQnsOUwEnV7+1zGJaNITPafiFStH6YhA
	oeqrEKFrw/bFVJq36A5jzo3tiMZACopXHjrG7OWLo=
X-Received: by 2002:a05:600c:46ca:b0:485:9a50:3370 with SMTP id 5b1f17b1804b1-490c25a7f8amr314235695e9.8.1780988121944;
        Mon, 08 Jun 2026 23:55:21 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:559d:eec2:887f:c200])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-490c2d2d11asm400758105e9.1.2026.06.08.23.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 23:55:21 -0700 (PDT)
Date: Tue, 9 Jun 2026 08:55:19 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: resigned keys from 7EF4F96F2BE9962A
Message-ID: <aie4vVu1B4dSaVTe@monoceros>
References: <aiZEOcZWkEqqH3up@google.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="amas7a7coo76ngkj"
Content-Disposition: inline
In-Reply-To: <aiZEOcZWkEqqH3up@google.com>


--amas7a7coo76ngkj
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: resigned keys from 7EF4F96F2BE9962A
MIME-Version: 1.0

Hello Dmitry,

On Sun, Jun 07, 2026 at 09:26:48PM -0700, Dmitry Torokhov wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mQINBE6H1WcBEACu6jIcw5kZ5dGeJ7E7B2uweQR/4FGxH10/H1O1+ApmcQ9i87Xd
> ZQiB9cpNRYHA7RCEK2dh6dDccykQk3bC90xXMPg+O3R+C/SkwcnUak1UZaeK/SwQ
> bq/t0tkMzYDRxfJ7nyFiKxUehbNF3r9qlJgPqONwX5vJy4/GvDHdddSCxV41P/ej
> sZ8PykxyJs98UWhF54tGRWFl7i1xvaDB9lN5WTLRKSO7wICuLiSz5WZHXMkyF4d+
> [...]

That looks good, thank you!

Best regards
Uwe

--amas7a7coo76ngkj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmonuNUACgkQj4D7WH0S
/k5d3AgAjMa3Tk9zAukd8Wr+ylJ0cWTKzjJ6PoK1TeWvitneMQmhFB4jIE+dz+IV
8PKgn+23vf9mgJHJanMrqNevQAhbIayZtLtjOBnC2WQNK4PYKO+B1+28Fnh0znb8
fOsXHY1xFioXvDW3x5C8iea59LJlZTFa82vKSGOTcWvzEYjrj8QKYjKKBMUw2jKQ
Mh/aKTyIS+xv6zQn9fy3C+7EODg1KGdZ09qgv805NLYi8psVjflamVTt/soiAMWb
3KNiCRhkw1MmbxZULidkwrT5Qmr2NQmu4IbuRd8Dk+DCMkRl8fmTypMBOD3lYYcX
Uym3g6y0adP3AA/RaHGKYzgGY+xfBg==
=CDBs
-----END PGP SIGNATURE-----

--amas7a7coo76ngkj--
