Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8203E368D4C
	for <keys@linux.kernel.org>; Fri, 24 Jul 2026 17:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784915977; cv=none; b=URC1hTeplD4EaIhBK3j72YIzi/o8IkH0+NqX9kOskhePUy5jjVZhOq+GoU8Fu5r4OhXhzchHNUvLZ2J1S/G4OtDz88yQ7/1VOj5DItHZlrynipVbXNZQwIaXUK+JQqsiT0YH81RhIw2y8cyzAastQRYD7Qan4b+Yy3HoEXGJwTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784915977; c=relaxed/simple;
	bh=iGoqzOP9xO1nxJQ11XbZZwB6qBeFhLpgnmiKu7cZzkI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nzf9BHQ+YDpeI1n70V28OwhQd8JURXzNtnbrJixFB3tMuBEjkz8eL0K01eySpWcoKE2QclHHEou7w841Gr0TFzgNRJLeewmAy5kCfoZ86X/szrtwcxK9OcGBEUa7KjwH/vGThoXdyt8iG+Fm8N1cy5VXMiLyf5pt5tsyMGL+eac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=NCXSz+gX; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="NCXSz+gX"
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-472326ca506so571674f8f.2
        for <keys@linux.kernel.org>; Fri, 24 Jul 2026 10:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1784915973; x=1785520773; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=/NRBXZLaR2teozDM6jY8qnbZ1GXcFrHLYy/sTJIBIcg=;
        b=NCXSz+gXZHPAfhHGrlfv9iFC+00Tblqi47ZZEfio4J1WW5jjKHJMPmRA2kahN+s6Zo
         DPCdfO+HBK4EmEmNpTxLFL483qpmN7c/+Y7X47+hQsLjXzFVZOfJ0mlrADaQcSJKmXzZ
         abxZw0GgDNg9XV+dmPUjgNNC3qAHIr4v7aMiLNfE2g9SXE7oxRb2q5kFwL1ET+zyKMgO
         UkCiJc/osMx/fdHMm0yElpfJmOV3wd50FNdinKtql5NYvUnGeJ4PYdoCR4jK4XUV4be0
         6F8Zp2FyomUCRKpjVPosi95koxNonXb/d8RIZe5M9q1MYMQYX/IQUcksMp55BWnqhQ1t
         oQ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784915973; x=1785520773;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/NRBXZLaR2teozDM6jY8qnbZ1GXcFrHLYy/sTJIBIcg=;
        b=KVgvjeMupkjJfpl8E8ZCtU817u4AqnKLZtaQYtE+EnL+nRieHi9QdFiWdq6DovYlIo
         pz/R0MXJlclkIdwuUaUkpuyNYB1ZjDMgVjECWevIL7iTrJ4l4hPF1+H1hCrujZYyCfG9
         JnoyWzjcdahQDTwVVs3Rb1J6Q7D5uxP+QVxcyvrRFi1rsfHQ8bHHIqQ2ztE/aCeVGnlx
         bkjtR5juj7cVMj9I1EXyv1LGDt+nZjL+74601Ohyw3vle41Oz8jbBiq7IE+u+f80IMRk
         Mux7TPNol6dm7F4j4KEkaAzWDBoPUnlJwhtgAC+4d3867sK0NB7cBuy0XOlhviHbL07e
         E6PQ==
X-Gm-Message-State: AOJu0YzVI5PZW+JCW3jHosNVVkTmO2nMuTaQ+2OwcTPIopojpNwqTqpm
	wVIqcxMx0n7LyUwimUWZQ8g+8buAqOsC/GplX2KYJcT6Fa6AvjpPJ8CMDMdHlBGKA7peFK+CJB2
	Ls/RA
X-Gm-Gg: AR+sD115RrrawW6UTv4rXxC3/iz8DvsR6fEDd5WhRyfGBaBsM2W1IBhg55A/7iY1oQQ
	/Mi4PzuXJoP9q4DMtHbpPVZVtIE7RyGKK7JotyCqAQRus4mQbeq9GXTgSnYUPWb8lCT9X3M6yZe
	Ut9Krue7gQTef8TO6ys0SbCq26O869Qz1cx/FooBvvgE31zb1EU6VfZRz/6kuHdTj3Ro+a2VhV/
	cdLdcEFBw2sJuZQyRz1dsinLayPsv6Oxu3r2FMsSQlxDyD1BWmA0QZ7lixwbGEg1XwWuLUC2o+y
	/GYNoVrHAek2Ukga0AzF5paDlNX1q9c3pIeKpP5jd5gIJi6cWvPa473o9AdaBoXmS4xmCDpUKhQ
	91HavrWcXMheppslX5IjHsQkpXFUcn5RQlCvFK9oB/hYaAz6+aCaDVG38E7+j6+rPLBJKUkyWzO
	Q2vHC9nZI=
X-Received: by 2002:a05:6000:41c2:b0:47f:4650:e45c with SMTP id ffacd0b85a97d-47f8d61a4ddmr11466874f8f.12.1784915972508;
        Fri, 24 Jul 2026 10:59:32 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-47f85b9a5a2sm28194667f8f.7.2026.07.24.10.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 10:59:31 -0700 (PDT)
Date: Fri, 24 Jul 2026 19:59:29 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Will Deacon <will@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: will@kernel.org
Message-ID: <amOm00f_J8bZFw_f@monoceros>
References: <amNtKaEO-HMnhrYE@willie-the-truck>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="task6w7uamq2jqqq"
Content-Disposition: inline
In-Reply-To: <amNtKaEO-HMnhrYE@willie-the-truck>


--task6w7uamq2jqqq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: will@kernel.org
MIME-Version: 1.0

Hello Will,

On Fri, Jul 24, 2026 at 02:48:25PM +0100, Will Deacon wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mQINBE6G5s0BEADDGfOcthrGJKfkcrFBdCyduDIsx7Ca02KKtvuNsBrpj5mDGSlf
> [...]
> LFYBaYx/l+Gxzd10OVv2br/umTyBkQB59JlclrCcW7RYl5jbBO0P+PKfTVWV
> =3DFO5n
> -----END PGP PUBLIC KEY BLOCK-----

`sq cert lint` reports:

	Certificate 2DFBF4523E542FD9, key 4687FCE0E1EAD0C4 uses a SHA-1-protected =
binding signature.

I think the script by Konstantin (used to redo all the old signatures
also suffering from using SHA1). If not, `sq cert lint --fix` is the
easiest way to fix that.

Also one of your identities uses a UID comment. See
https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-harm=
ful.html
for learning why this is bad.

Best regards
Uwe

--task6w7uamq2jqqq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpjp/4ACgkQj4D7WH0S
/k6IBAf/cI2NZXPI0ml6oC6f+s8Hd14iFg6l91JEA3VJul/DRdvfzFHVqdjKVbmO
E0FjoTX1nkoAyAzwJT8qB1DMXAzXc6esb/T4MfbE4R9h/kP3P+H0GFdysovR/niR
iln3vfvBE+oYPa0iOFAwjVOhzX3zqz/ogeSGdgRI8aNa7b2l8UVhZzV3A6Z2q2ju
SRdl5IUJDfTLZs+p3Qxd4W+CIYebdqmGxnCH7d0HcTO81Sikk/ci7VPpD9L6J4La
ZoYJz3h6EHbtqPanVtmzV6FIPc6GwcKR+k7IoLIAgJaCFVMGzd9WNEUncNEDd/a6
dczVcrQ1UEFo7XH6SDAC1FjpGLKq/A==
=jZ2V
-----END PGP SIGNATURE-----

--task6w7uamq2jqqq--
