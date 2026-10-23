Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.49
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792746048;
	b=C45LYMTQwHDYsZnuqBjtbpXCI7JTk39mnFxjYdQRq+uXFDBaB482rRJDF1bU3NDa3ma8
	 5GRqxYLTx0SYDtl2vdbczLHccVJRC/l0BT5B+8TcDQDNeMrYZ2pUNCAyIuU2tSGNYInjB
	 RgL2a+22bklCEwqJUTc8DtyY7JItxch4kglSjGKvHmgzFyFXTfHZQ6vyj1epOmxMmaqHN
	 +XnaKu5YhEsRNP8DVxVc6pwypJ0YDc8LaqbmH3XQ5lZzxzzoHGH+hv55KyO/o06a/Otrn
	 bYqTIbfF8yvmNCSaJDYeRp0FkIDedCBkOH302Bx0stJyB0pIcOnMnEWD2x0jOTSPzlw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792746048;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=pJm3MjLo0o8rp/Ge0jLZIvDVWWQPBufELEU5K1kLfcM=;
	b=ylVqcWIuvaO0JrhvVW2ZMCbQ8p8i84yIhajb5tYyorz1sWQSh7iHOVzD7GlV+F/2zdXv
	 ulNhpJTivR4ENG+XV89HMgN5aKFcjms4JWALEAY/2TRiju+tRM0S7n7fT4UTjAXrAGt1a
	 /XPEEhgDkGLCJ6cdrZPj39CIL64x5+gYtMJiZ5560yx/+k6cN9nn17yIQ9FArfuOTlt/6
	 rT1wqHjKl4v5Ic7Ap+QqTjVZE3YDUv0VqRBLIFK8GZwzQSDPCtD2YWedqsn2cRnX/E+ZK
	 7syPJKu+W44y2rDVx3D3XKgK+t6m0NdxaOxWEpgRKayfW4AFLGaR6Ku+AzB8pL2ngzQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=Vw6V+u4z;
	arc=none smtp.remote-ip=209.85.221.49
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAB0606A31D
	for <keys@linux.kernel.org>; Fri, 23 Oct 2026 09:00:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 6DAB0606A31D
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=Vw6V+u4z
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-48dfc0421d9so499399f8f.1
        for <keys@linux.kernel.org>; Fri, 23 Oct 2026 02:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1792746046; x=1793350846; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=pJm3MjLo0o8rp/Ge0jLZIvDVWWQPBufELEU5K1kLfcM=;
        b=Vw6V+u4zVGhSvESIK7D7ides4xSFYNs62ikGtJZxCgps4i8a6OSskHPKBK7Sug/i21
         nF14TbdX41Bcn4IlKYqQSIXlksm/7r1+TXgy3kB8VlTH96ABBq9MPIXKKKhh4pAodk+o
         IgVdyPI0BGrhGEwaUbKHgMtiR9KSpHOYK/hCG6IEAEmFfoj8ysPeWAarxJq2eKAGm29m
         Je/dbekWu51cy+WhgXcAajMLhSpXitEG0zxf4zU5gBajwCfvBJOsB+42VnvQmn+dr6CV
         9n/tbqhKS58QzYIzs8BWVFm4bcNj44ueQ1lhbkU4peA9uKjOznwuykZ9A/gaKPJ1QM9O
         W4CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792746046; x=1793350846;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pJm3MjLo0o8rp/Ge0jLZIvDVWWQPBufELEU5K1kLfcM=;
        b=oq2ONVQjf27Ac4Hpt97ow6+PoerqZE++ndxzC2GLtmJFR9KVg5ZUea4aVL3FBwgEEW
         D9kuFAKGxss/2P1GRursyjD2UcuhqgNz0IFB1ggr5iZmf3GVSU65O8ru+z5dv+X15jdT
         DiYLJTNG2cfClv95YvMHisa+tfaAp2PcUqxFmJIcLXYWIM/SBjWdgd6v7sLP+6HfYxQk
         4mX8THRqCmyNck3n3KomfJyy7fk0wUDo7aPdrWHNORFu4m1aXAPLDSE0N/sjq+wIyMpP
         5cF67ZPnkqBDaoKc8cFHd+JbV4puP3kpbH32NJhnobcgGu+Gg61hwwkBPdwcqaoEMEoo
         odWA==
X-Gm-Message-State: AFq9FYIAM9O3jm37H/rAlmffVKIwyyPIP2o0Jm9PsbO3y+PjyTSb0nKy
	IyZfEcVl1j0vSlB0vAfA4+eTLGUgjTtBzHsmPIJ91wT7rJKu6s9ly6qU0n32iqgnamGpdWb2b0I
	SQhRgVZM=
X-Gm-Gg: AYBFou3hfy0h2M9Ul/GhF/0JhrpC5Miqo5PETQ2FNe8LQym6/Z9UY1eWsbs5ED2HMt1
	Z/3BXXWkpwdhY1XNccfEUZnNag/7jd6CeeResYeS8rTpWmtsegfHonHUUB9/uYGeSqXJeBJL4B2
	/RZi/V8fcWYaQSV7dZNvg+308hMtWgSZWSleeNNeDYsqAophcLkX/Az/slgdkF6NVBpWE3g5ZBp
	iT+bRLsWHLvwsVuXDaRlIMw1SHP2QKcNvkWpICK/DwEPweavtOFfRNAjvrwRYQyVEnUE+8VRI/A
	QgpuDXaUgEn+3GbACqCz4CZ1UxgfD01bYunBxshxJu+BU88RRu3cpYoPs8Ttq5oeQ+LFT7PWn4g
	RdAqAMAKOP5vaZ51dgLHaT7l5284tLc/IzIKgcFHx0wRz+HU51vt2PMG7CgJkNXkDfvCHntTuvL
	+jenc8CMWaFtFqT25qKR3mzoeCxg3RhoX7X6Lr2jAAyFAVg7dnV7eGufl95ZijZ8S6pnkbUtHFY
	zGEFdxImPiGpwinZQYURUwrwvSdzZIhzTxFuHd3QFXrorkf1P5NuqUsgOqNyD+iBhDq9eQEbDxN
	ENBTHm6agp7NqYgrWOLwvr0ZjZ60N+0U30WIv+i8kFc=
X-Received: by 2002:a05:6000:4905:b0:48d:f069:570c with SMTP id ffacd0b85a97d-48e385afe32mr2434129f8f.41.1792746041534;
        Fri, 23 Oct 2026 02:00:41 -0700 (PDT)
Received: from localhost (p200300f65f19a9045816c66224fa2d94.dip0.t-ipconnect.de. [2003:f6:5f19:a904:5816:c662:24fa:2d94])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-48e38063e62sm3429548f8f.57.2026.10.23.02.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 02:00:39 -0700 (PDT)
Date: Fri, 23 Oct 2026 11:00:36 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Fan Wu <wufan@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: wufan@kernel.org
Message-ID: <atsiDQMrD-899iCM@monoceros>
References: <CAKtyLkFmH8eAXH5Rv16jj7TJbYYwu4toOweV9r37mcpwVognoQ@mail.gmail.com>
 <CAKtyLkHzZmxddmUJvko5nZwAocnHpq5w1_MiRy-K_5o1qjwv+Q@mail.gmail.com>
 <aqSIIOex44DlV5zP@monoceros>
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
	protocol="application/pgp-signature"; boundary="qsntvf62zg6aqe5r"
Content-Disposition: inline
In-Reply-To: <aqSIIOex44DlV5zP@monoceros>


--qsntvf62zg6aqe5r
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: wufan@kernel.org
MIME-Version: 1.0

On Sat, Sep 12, 2026 at 01:10:05AM +0200, Uwe Kleine-K=C3=B6nig wrote:
> On Wed, Sep 09, 2026 at 11:20:03AM -0700, Fan Wu wrote:
> > On Wed, Aug 26, 2026 at 12:57=E2=80=AFAM Fan Wu <wufan@kernel.org> wrot=
e:
> > > I have extended the expiration date of my gpg key to 2029-08-25. The
> > > wufan@kernel.org uid was not refreshed during my May update and was
> > > still carrying the old expiry. The attached is my updated public key.
> > >
> > > -Fan
> > >
> >=20
> > Just following up on this request. The self-signature for my
> > wufan@kernel.org UID expires today, and I may need to sign some upstream
> > work in the near future, so I would appreciate it if someone could take
> > a look when possible.
>=20
> I confirm the certificate in your mail extends the validity to
> 2029-08-25. However the certificate currently tracked is valid until
> 2028-05-18 since
> https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/diff/keys/9F7AE961=
30261360.asc?id=3Df084fe1e221ddf036596232e476cc8386d3c46f3
> which was committed in July (so even before you sent your first mail in
> this thread); so there doesn't seem to be an urge.
>=20
> Given your certificate is also updated on keys.openpgp.org also, I guess
> the update will happen before May 2028 even if this thread fell through
> the cracks. :-)

Just for the record: The updates expiry date was picked up in commit
03335e1ce5b6 ("Update from public keyservers").

Best regards
Uwe

--qsntvf62zg6aqe5r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrbIjIACgkQj4D7WH0S
/k5mggf/f9zKT7/gX4A0g1s35iialKvdcx03vH+J95s70azBPj+sI52d/Lh7/7es
bBIffR4ltMCBOtKcxFNGGIwDJ7TlO1YbdZ6LBk/kwi/QOvJVF0OLdgxVV9Xoc6fD
YIwF8UyQS/geXwu740EYrvCFsr+e/pF7Lk+2FiUBpDPbSIrG4h7hzntuahgo3z48
/Wl6kLcEUZGBNmVFvHmga/UujMLeWqahyD4xZgff8Ge/hJjwb5Pdr+si/HsE5WLy
FM+JGtXGjybmJbIjlSZur4UaltjoxBJ84QFHr0/RkL46Hug0ZT2Caliyvkhkfso1
4jkX9ZnhwtSHxcLduYKlecIiSHzOUA==
=mEKy
-----END PGP SIGNATURE-----

--qsntvf62zg6aqe5r--
