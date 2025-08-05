Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EAD255E20
	for <keys@linux.kernel.org>; Tue,  5 Aug 2025 15:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754408816; cv=none; b=nxtKJp8KIXvLQfc9GgmK619gVNfHpePoclEhSqjnI+W0hkpkSHPlsC+eFSNljUn1ooJMHXTRLQEHn0Xh4ZlYotZLc61a9FSFUs3MmXB1AHJxv5HSB7dF7KdW64ztrk1BBxmaKeshsZcXV3y345HhIpIujtpjdK2kyRhQEhiahLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754408816; c=relaxed/simple;
	bh=wEhQUR1NWHCBKVOvIHgONQZR3jfqUhfvEmTR9ArwVcU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BCVAqanfxBt4zpfzfXbnIDk6n081eS5XQlqSoBLVlmtaDLaiNdglafd3bvXKOYSjoSYW8wD8fF2NuZwB0y/KMpIPno3AfGpp4tVry/hOq9h7nO/jUt5RSozWyA+VnGrgKNkEXe4qu8kTysUN0Tsk8syfEp5+gKyDyeXKJjQ04Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kcHCgbPI; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kcHCgbPI"
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-459e1338565so10415555e9.2
        for <keys@linux.kernel.org>; Tue, 05 Aug 2025 08:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754408812; x=1755013612; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wEhQUR1NWHCBKVOvIHgONQZR3jfqUhfvEmTR9ArwVcU=;
        b=kcHCgbPIPut8gF2kbKNuxCskrceGpfwCSP+cwQZpj9iZSiBQPekDmu79RpWq2gYDCG
         z3b74rYFLNqOqQCxnsa+a8hFzN8u1SzRgELSmAjDjUZ1cW6s4kSaOJP0+WHn4ZjHUIZt
         qUk0Dz+fA1JskRO0c723YmVm6bglWmmCQ1gxq05Edft1rfNqyQs6PY5XakLt0yyRuhxj
         oF96xjKnslTFR6sU6mlDvDFyvO6sAXLiWQ6WkzXc5PsRhwj19QAN6qCw67TXt3DWM3Qm
         95c3vRW/a6gXplTDy6+ERxRvjWWBMRqrxmBXWnFWtailCifeMu0tXOYmKkOr99rxMi5p
         A5Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754408812; x=1755013612;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wEhQUR1NWHCBKVOvIHgONQZR3jfqUhfvEmTR9ArwVcU=;
        b=QXu+L6MiOK/fX7kLc8ggfNlLmP4GU4uDLhjNDO6NekZ28XA2qvIZbioRv01/33R7cT
         CUzvMHkzsDfTCbAYXO1mP0NE/pXPe1z1WgHHkx778eH9IeSFOpwn/RR+MYBifmaUM+UV
         QMmmhaDtxzQ2XO4XHAbDUeG2Wos8KWk7XxfI5YYhpgqbImnbOsJVkH6kprI3x8pxrKzg
         ACWJr9OOU4YxoVU1OPg0fz4JdSVE8SudzGpAwrxa52VGcchmuVGX7hkUxAyuFSR8sTo7
         pzqiE0fIPCech9i0fsKo/ZAe0ZZfv3UhuC47TpIEkVaNIwF31VSR1JHH0vH72tk8Fd0j
         M41A==
X-Gm-Message-State: AOJu0YwXcTIvBnOJXBAnsNW5XhvgmWa56zjF7gVg5Avv1dW7kR+37kuY
	8CROxdkLpgveoGBlf1MKaXf7P5TKyhIjpbE488DD53ZRd2mYXuhpTDLy6oiEJYxQ+mc=
X-Gm-Gg: ASbGncv1ZBYr4nUNczZIWFD7Oy1QP2T8uxDZRCggGqPSN5BIzigLuzPgHHGCAA5XX/a
	KmhLJTG5c1zk26c7HfD3qKASTH6jdvhZosmuXLnHEOAJLURdZDUZat8b3QZPSCNpZUbDiRsfkGz
	vwCX50Il3O8IoP7qe9fa7DZfraBt5Dnoep6e0dOpZWZRWALCQi1+fZs5z1VcbeNT55mZaKGfSwk
	yIc85adeVyksQ+wLepH8FUOYoQ9mFE5lrfuzLH+MLKwr6w1/AdkNoO9Vton+FGMjFPjHTGxQexJ
	KeVBm1aiXLdRpwBDdx0Tc5hUUrxRsdsMSHBqR3Cl1liaf+MTk6TKTWFISta6bcu0y3BSrHDZVYX
	gIUMAJVL+8EVanPYSrNlKNvSXDoex8CV6iqTnlWXajnaCkWvCpYNS31hNbAMtlddz
X-Google-Smtp-Source: AGHT+IG3ljcjrnyFeeTKYrH1X/X0ouRsEUbwZf0BsrskCqfXFCxDxZqVfV+ierVbSY13ZTulSGGPxw==
X-Received: by 2002:a05:600c:1e8c:b0:456:11cc:360d with SMTP id 5b1f17b1804b1-458b69de114mr110924145e9.9.1754408811479;
        Tue, 05 Aug 2025 08:46:51 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-459e583f9fcsm8704685e9.4.2025.08.05.08.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 08:46:50 -0700 (PDT)
Date: Tue, 5 Aug 2025 17:46:48 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org, Kieran Bingham <kieranbingham@gmail.com>, 
	Kieran Bingham <kieran@bingham.xyz>, Imre Kaloz <kaloz@dune.hu>, Imre Kaloz <kaloz@openwrt.org>, 
	Eric Dumazet <edumazet@google.com>, Eric Dumazet <eric.dumazet@gmail.com>, 
	Eric Dumazet <edumazet@kernel.org>, Pravin B Shelar <pshelar@nicira.com>, 
	Allison Henderson <allison.henderson@oracle.com>, Joel Granados <joel.granados@kernel.org>, 
	Joel Granados <joel.granados@joelgranados.com>, Joel Granados <j.granados@samsung.com>, 
	Harald Hoyer <harald@hoyer.xyz>, Harald Hoyer <harald@harald-hoyer.de>, 
	Harald Hoyer <harald@redhat.com>, Bothersome Borer <bothersome-borer@kernel.org>, 
	Confounding Cockroach <confounding-cockroach@kernel.org>, Frank Rowand <key_111017@frowand.com>, 
	Frank Rowand <frowand@gmail.com>, Frank Rowand <frank.rowand@sonymobile.com>, 
	Frank Rowand <frowand.list@gmail.com>, Frank Rowand <frank@frowand.com>, 
	Jacek Anaszewski <jacek.anaszewski@gmail.com>, Aggravating Aphid <aggravating-aphid@kernel.org>
Subject: Re: [PATCH 0/7] Remove expired keys, 2024 edition
Message-ID: <mvcgtyzwqkjbwk6hwhrj4uggzvvc2hoyb2hlqnmtj54pnwawmk@5f2nlzlnmjbt>
References: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
 <20250805-caped-jovial-limpet-ce9baa@lemur>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rlc2nnd4l55twdhg"
Content-Disposition: inline
In-Reply-To: <20250805-caped-jovial-limpet-ce9baa@lemur>


--rlc2nnd4l55twdhg
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/7] Remove expired keys, 2024 edition
MIME-Version: 1.0

Hello Konstantin,

[dropping a few guys from Cc as their addressed bounced for my first
mail. Interpret for yourself what that means for the respective keys
:-)]

On Tue, Aug 05, 2025 at 11:10:13AM -0400, Konstantin Ryabitsev wrote:
> > A bit orthogonal to this series: It is usually recommended to have an
> > expiry date on PGP keys. Most keys (472 of now 620) don't have an expiry
> > date, I wonder if that would be sensible to require at least for new
> > keys added to the keyring. The upside would be that we don't trust keys
> > that are already long abondoned. E.g. Gentoo requires that for the keys
> > that are relevant for the project[1].
>=20
> I don't really feel strongly one way or another (clearly, since I don't h=
ave
> an expiration date on my own key either :)). From my perspective, the
> hassle of dealing with expired keys outweighs the security benefits this
> feature offers.

I feel the urge to advertise the advantages of an expiry date on your
key. Yes there is a down-side, i.e. you have to regularly extend the
validity. However that is one command to update and then sending the key
to a keyserver and the projects you care about (another command for each
of them), once every two years or so.

However having an expiry date is beneficial for both sides, the owner of
the key and the persons/projects using the public part. The most obvious
advantage is that the expiry date serves as auto-revoke if you should
happen to lose the private parts of your key material. Further it
ensures that others using your public key have a relatively recent
version of your key, which is relevant e.g. when you added or revoked a
UID or subkey.

The relevant part for the kernel project is: If someone stops to
contribute for some reason (shift of interest, new employer or even
death), there is a mechanism to notice that. This allows to close the
account and so reduce attack surface.

For reference also see how TLS certificates are handled today. Pick any
relevant CA and ask them to sign your certificate that doesn't have an
expiry date. Be prepared to be laughed at. The reason for them to go for
shorter expiration times is quite similar to the above.

Best regards
Uwe

--rlc2nnd4l55twdhg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmiSJ2UACgkQj4D7WH0S
/k7ZKwgAgd2dW2rJBYOWXBGiEvtSJxBCd9cFL2Vl2gHNm1rM0+brnzCUoVmSajU3
Xb2e8YZLKzdatZa8G6Kv+ibI/GDAQJJfqjAf0jLFOwls+lsUH2ns2VVh2qcmqz9Z
Ay8o/jHoeBB5o9VDtJqgJA+kcrFqhxo4kmWfpv/iGr/kD59lh0V9VEqYwqC/q0UO
GRbvKXZezq4US56Al4TJFdYLqs0CaoeNumotas4Ht++fe5eozRQKfWYqVrZJ/usd
R4PeCAqoWa3BW2XeAS4ggpFI0sdZsbMlRhXGtDBywF/l0w7pV40GNKhLK+E5A8BH
Cp54k17cL7tMEfeHULgmitPj8xFQMw==
=2axV
-----END PGP SIGNATURE-----

--rlc2nnd4l55twdhg--
