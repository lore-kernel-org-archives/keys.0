Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC553356762
	for <keys@linux.kernel.org>; Mon, 22 Jun 2026 06:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782111173; cv=none; b=g0k1pBv84BTMZiC/H3Za27MN2hmQoxBVCA1Ajiz3ue0zy7OeetE2W5YqBC6J4OlGSH8JJvtopHhAvEYnAQD0kpiJx0faiMTtv2AmB2LvULl0w/GDJFTrvC70wAs99QdypBR/8XmvaRjd3FRx8mL5vyecwzx0K2U67Z81nqGoSR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782111173; c=relaxed/simple;
	bh=Fs0CKbhN/11HwtoVMPuWDtzeUPi5hO0MU72y+7yvx6I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jhzvb8HLBzRVOuxxgO4+Q4BMJfU6j7MBPL3qwiM9TUYujbRj/TxNzcXOsrreZyW1/RlEgtyIn2ds/QVl0VDFpdQZaueGaCaYA68I5nY8RtzBMqOoRCfkA6Lbc7NX07wOFlN+dpPw1qBuF2Y6TdU6vtuPQuvu+6TLvqzGj0KFHdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=QDv2QOIZ; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="QDv2QOIZ"
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4922244f7c7so34209545e9.0
        for <keys@linux.kernel.org>; Sun, 21 Jun 2026 23:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782111169; x=1782715969; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=L0w1JvZzsEApYSBKwVR8uu9zfvfzobbakGNRKYJcdWA=;
        b=QDv2QOIZDnHDqRJrje51ukw+1AzZ6VU1AQqrb3XEyUA4YbvIf2lAxYBfve32f19EDL
         MzlnejPa+ZPrhKKvEya+sFOBtrgtUea7thVpX/supTAu4iyLFDyzDZokbV4aMwyp+kmW
         pXf/q8q4iN84PEiq9BDPg59apDaMqnRc72H1rw0Fci1Gy+1WGuB9fFrpbcW38MWxdZ4X
         BJhqwTN9V8PjdCa5MuS4utNH8+wbnEmaxYkvz8FBDv6W+c4Ypl5W0codFmebecbM3Iim
         dYQrILjBUvrUgDL6mgi6GrMLUDYfpIReUbot/AiWefdhzyEySUKpcjXnSaY9zBLKC4n3
         yAag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782111169; x=1782715969;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L0w1JvZzsEApYSBKwVR8uu9zfvfzobbakGNRKYJcdWA=;
        b=rUDkP533q/g4RRicQ2FxOtEdp6brtBYNwkY8uJWK4mx+eqyNFXnXC9l4h/eddBxoHn
         w9mrWJ5mKxcOPVhJOsqRfCwfjXr5WaLxdP0ABnwjQNNL7cgceqISPZEkmt0XXVOqzNpK
         AHynO6lou8/FezFdqrTGmilziuZSiqCxp0a+hbDOqh/VqpsG/o6JunWY8ZjZV5rFrF+L
         DaVRwCEhea/0bVjINOyZG2CpF8AAGVxpJAlQ3kKoZy1YyZzmJ9pBwaGALQgh9MjJiwWl
         0ZYgq+9p1bflU5dfVT0YufSziVnHJUK9uzdNux4TL1bHABfpCaLqJbGmWsqZSyWrye7p
         uTww==
X-Gm-Message-State: AOJu0Yz399VhjST8XZdv9+coEFtcvr8HF0TFQ1/F2qXd0z9nO0QFbN5X
	bM3U+3CR+VCtfEOvjKthiOgTQUZq77QYjjO91t8Bunergp9imWgMtd8yiduIV3yqyT+j02ybHFB
	JMuKq
X-Gm-Gg: AfdE7ckBPvqG9JKQZXwJc41pIbi6lD879kzqlbQKcWr203ZmB3LX6AgvfbnMTEZrbdI
	9ATj1Th7/rwmC+DQGnOrKs+m7sOs1tguJxYtYdeD5ISAHQ7oFWhFFIaLeJKAbqq/jMsOv28bAdZ
	RlK+IVtt0dwhi/+XtWey3YZijF8OEs4iGvmbnlINtjK4ElxNB2md6yc8rDijESPmf/tkNv0VkI2
	/ui9fANdP0DQjK2JlJJAg3q19Gfz+1nMPsFf9D1UArIQ3wsIZUtx9AtNaRY5hEvFG6Me7gzKf9G
	pfy3HKtMN9kqLf1Ba1bBjwy+MpXXorJxFYiRVxjlF+qI0gnKWFbvNaKsFdYfh4Ekoa3Li8mWaxS
	HUKWmI1oFMSKRPpnKpFS0BKEZwr+SQY9RNriaYG716SQuwlcM6Ri8TAX1buPrh/KgxvgqjNFMVG
	0H1dbLHckOiTipTpCNHAgHMOXeScGt
X-Received: by 2002:a05:600c:58c2:b0:490:b473:8f78 with SMTP id 5b1f17b1804b1-4923f578b48mr158855175e9.17.1782111168897;
        Sun, 21 Jun 2026 23:52:48 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:559d:eec2:887f:c200])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-46666c57ba0sm24660684f8f.32.2026.06.21.23.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2026 23:52:47 -0700 (PDT)
Date: Mon, 22 Jun 2026 08:52:46 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: [PATCH] Convert key meta data to utf-8
Message-ID: <ajjaxDByH2fGwHRh@monoceros>
References: <ab8bbnvHZZTIavKZ@monoceros>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x6ppgomww7m2ebjn"
Content-Disposition: inline
In-Reply-To: <ab8bbnvHZZTIavKZ@monoceros>


--x6ppgomww7m2ebjn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] Convert key meta data to utf-8
MIME-Version: 1.0

Hello Konstantin,

On Sat, Mar 21, 2026 at 11:29:52PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> gpg defaults to latin1 if no locale environment variable specifies
> something else. Up until recently the maintainer scripts for the kernel
> keyring called gpg in a (nearly) empty environment and thus the meta
> data for most keys is latin1 encoded.
>=20
> Since the script was fixed to use UTF-8 for the meta data, Krzysztof
> Wilczy=C5=84ski's certificate (7C64768D3DE334E7) was updated and is UTF-8
> encoded now. So currently we have an encoding mixture.
>=20
> Align all meta data to use UTF-8 encoding.
> ---
> Hello,
>=20
> I hope this patch makes it to the mailing list and your inboxes just
> fine because naturally the encoding of this patch is strange. Also
> patatt was unable to sign it so this mail is OpenPGP signed instead.

we still have:

	$ grep Kleine-K keys/E2DCDD9132669BD6.asc
	grep: keys/E2DCDD9132669BD6.asc: binary file matches

instead of:

	$ grep Kleine-K keys/E2DCDD9132669BD6.asc
	uid                      Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
	uid                      Uwe Kleine-K=F6nig <uwe@kleine-k=F6nig.de>
	uid                      Uwe Kleine-K=F6nig <ukleinek@lug-freiburg.de>
	uid                      Uwe Kleine-K=F6nig <ukleinek@strlen.de>
	uid                      Uwe Kleine-K=F6nig <ukleinek@debian.org>
	uid                      Uwe Kleine-K=F6nig <ukleinek@kernel.org>
	uid                      Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

with this patch.

Is this still on your radar?

If you have problems to apply it, calling export-keyring.py with
`--update-header` is how I generated the patch.

Best regards
Uwe

--x6ppgomww7m2ebjn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmo427sACgkQj4D7WH0S
/k6KoQf/YQ5gk2eDqFKpCW23T+wtnp5zKYDyX+o+A0wcwN+lnud/7VaCRj8EqNF/
93NsktjUXHbNjNaZGpPHXNDoG1GKnbwCEqpoYdmN5verXcul+NzBvrOj4RczqkRK
6ciCyt8zxDjIwqH3tzygMZJlnczNLJ1KS9Q8PRrOSTS68nDsZZKTz63V8K0UdYAc
B+vfRypyFjjObkpbq9aj2PG5VVpeBtzGblB7+w9fuaA7lXVfdmUFhXAyw9S2e6qx
90zaWklpOzN7VW/KLEM6VNmOBGFM7/haJ7XBRpawNUseNhfsJNBTyWo/C5qnRxjX
p9GzJSzeeaZ9z5cIv658LjWomNq+Pg==
=uc6T
-----END PGP SIGNATURE-----

--x6ppgomww7m2ebjn--
