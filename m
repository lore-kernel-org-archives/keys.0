Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793284535;
	b=iL37UN3ynho0yibfNOT7YfK/XZdUxfXyEnMIub1c7cTiMx7e9QC+5O9uSZ/Nm2HkOGC+
	 zwx+QKL7eH0VcfH9pnm6pKTuPaCPolmlxVlkdM6ydxii+JTERIHx+CrvMUcOohTo30u0z
	 I8rDeg3/L27ZudXtDd7gz4vHubu+lkL+XY1TWB6A1H94BIQzrl8hcI3xrIAmJgJQuu2EL
	 K7OM5Ej692h3M3iu5Cqsi48et7v7ID7ThqWK5na12iX/HQ3B9sIv7Zciiuz5EvptW5HDb
	 Cr0p810vr9o5SHAbgloX9MXhLSkVgqmo+I09ZqIHSABquFOztBKOFKKgmduyilAnMrw==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793284535;
	h=Received:Delivered-To:Received:DMARC-Filter:Received:DKIM-Signature:
	 X-Google-DKIM-Signature:X-Forwarded-Encrypted:X-Gm-Message-State:
	 X-Gm-Gg:X-Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 References:MIME-Version:Content-Type:Content-Disposition:In-Reply-To;
	bh=PrEkFgXdxrchabpipi5F2WeRwTV/XB/H/ddVIJk3VVQ=;
	b=QspPC4xv3Nhid5+JcCR542blG051a9B1JrQGhFQJSWCdssrZldoSSQNgRtfeZJgZyvre
	 ztXtATVBuYb7zGjVcsL+u6K2+n4xbMwFJ/7RwEz66GxskW5tv9bsiSz9DpJa3HKFM/+ea
	 yEl05pxnPSG60mb0YBIzZxPrS0pb6Q8nrns4jBRAIcAHGE9Zy8g7KmYvSLVzJ6pLpzXYc
	 avElC18j+3LktbSUWo9Ixgc545iIyYimCFbe4hHDrplGk9DZxM3uGJ8Zmv1X9cleiQAD6
	 1Vgp6kRPx08rfl7c41GeQoqWlaAG+wDOGFHHeayX2AlV/eqQ2oLulOSOykJ/YmfBW9A==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=hN6W4dnU;
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA62E606A31C
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 14:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=hN6W4dnU
Received: by smtp.kernel.org (Postfix)
	id 11B5A1F031E3; Thu, 29 Oct 2026 14:35:34 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=209.85.128.42
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793284534;
	b=w4CxgVVu4eL6DeJhmCCiM7p+T9ZQNM8gMLN2xGmeXcUe0oYE2FI4JDwXtwibEw3dtMhc
	 /2zCxuxVIX+bYU8Kf1ezVbn88Wnd4ZCwnUX8HtWBSv9FZFOBZKPJIE1vie2vYsV9HNs72
	 y+fosYR3rrXUyzcJuV8KapWLVBy3evxd86wzWaM/0u5wkLiejD0EVkTs/cnTQz174Mt9j
	 69QZuzpQB2ROLj5KCaJtcl+Z4fXGcTlrufc5cVtYdAae6ILexdhQNBzalXltEOC77N6lU
	 kIUYLe1OXq2DjvaIMRb2WGTIiL4zm7sbiNs+8gK382IJLQ4mJZY+KY4A/ehrrCjUrrg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793284534;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=PrEkFgXdxrchabpipi5F2WeRwTV/XB/H/ddVIJk3VVQ=;
	b=g4QxqreGFOg6hsjKcbMJvuv8k+1hIW6vNxpjHGnL9r08drLfqMherUF5ZH+RLz8GYRJ2
	 6w3Ji0p4aXcHx1vLGSC2f5cp8kpjnqIqRq1hcwxHzAI3rHZhmuWB81tDt3Giec+spvuUV
	 k4cr31MitWCbW+CUrwiNNdNMVsLhrsrDcaDPHSigMaCttpE57I2TQT9jGqEoHKBFiF6r1
	 jIieKzMAVlI+kmeBd3yDccZWlyLguwmkNYaTc9JtokVxqgyyeGY7Aj9MLgahg3LN6KZ/f
	 woZbsK7zhnaC2pi5ZGesTdfGLsgbpI7xnPgP4XXDbCLpkU6eyLOGVXuftkBVNLpVbCw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=hN6W4dnU;
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	arc=none smtp.remote-ip=209.85.128.42
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id B48521F01825
	for <keys@kernel.org>; Thu, 29 Oct 2026 14:35:32 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=hN6W4dnU
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org B48521F01825
Authentication-Results: smtp.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4a2000d5fb1so16260235e9.1
        for <keys@kernel.org>; Thu, 29 Oct 2026 07:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1793284531; x=1793889331; darn=kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PrEkFgXdxrchabpipi5F2WeRwTV/XB/H/ddVIJk3VVQ=;
        b=hN6W4dnUT8wtK+Wu2lxDxLvLPF38GRD3ufi0vHGiCc9o+dOzu/7pjkq3pWdNMz5ock
         qi2RbSyZdvcM2u5qeLdyebBBemDBNWFBsqMjwFp8fLoCgb82oFbmI1BYddKNtQ9uiF3Y
         M1mWC/eigU1WrBkd1D4TfiDlIpSajojJSxTY8va95CrWCZpeVZpkBnfCuxebyHcRLLoC
         2GJJQvciTlc/P6Lu1C4w2XsQChx+Fv4Ftu+YtJfKz7SZ1WSEYsck7jHcBHkWCj3EIcav
         EUD6UMZ4SBIIOQgtPB1V3tbO5h+/cu2gu+YbPvxbq4BJQVI4cePWIW9fGta9xwQMkjXF
         LE1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793284531; x=1793889331;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PrEkFgXdxrchabpipi5F2WeRwTV/XB/H/ddVIJk3VVQ=;
        b=ZA43qfVOEoZgAn+uNQvvOXhXO02neIeQ/3Y5qhrx8uDITDRaEbos5FuUUfR+UhkCDZ
         uG+md7zn30Ky5sI+FLFu1/ux0lFjyNIHvFM9F6B/m1PUVTW2gvH2KtRmoQQIXQoyvvsN
         uakXCOJ7FMEscS7ZKphdUvIJZfUL1rzymuYmtfxDA5/q7YQlWM0N/aMsDQCeSh3JmaCY
         saRO3xYgbY7+BFSzMPyv1oiYg/8khKieWirjTvjqyzozxXvNUXCy3QQn3qIQvMD/Jcod
         B9Mltbzla3MGPx76YMt3+F7RR3PK4SYz0pQVOs8K9NDnxP7rUa5l+EhIyQLnZ3lGOoty
         leSA==
X-Forwarded-Encrypted: i=1; AKwUvBypFGl8pYGUwelOojGNHKmseTzgYC0g54+uQHpC0/ExVBawEmbY4xpVZ3NQ4NxpDv3P5lm0@kernel.org
X-Gm-Message-State: AFq9FYIkh2ELa2mkcFtwFkwzoR8nwefSDPu/tYdYP8BbvqPG4IlRFHt0
	B8gxIW7CFGzOV0crYw5padpoyFezL1VqFoHl6I1xtK8iRiJlTnB/yxBGbxEr4Rz45j8=
X-Gm-Gg: AYBFou1rlkVRW1OJME6lZxoYrL4Mcy5hHCrQiSwQkXPVJ82VHS95t/G0I8tyXH2R207
	LaP86wFUa4/YaFjYXa9qShty2v9BAAPPGTaDeWJbqVC2v/PeEXiq5Q6zksvhN3XMsLT/XFANkQu
	0h2OLs28pkUk9X6q4c0xyaKQgJEOQb1+3vTzrQaxMCWH1slPjfQ+NMERM5oAXbgE/GTc9qgpu95
	TggZfZwRHlqQfSs1kTGy16EiuVyiCef8BSqdJTDxmfvTB1AQmG9Bok0JHM/zYWjgnILP4pQAqj+
	x8c5ucZX4QX9zVy7CmrT5ROaMWiRy41wTQB1JI9qkPyQiD7/pU4OIiR3u8cr2yHn15srB0HHwKM
	BRNeyr+PMKZ4+g5EwXa9jB+Uc94nEGofPZvw21r+L8V6jQs8PqrcGe5AbQMLsCsXEWiDz10WTvC
	J6mLJHLalv4cmSzj4S7stSJJD6W6gMKdz10840S1M1nymFWuVZeUw2/E4TRHlN5+CMn5dR8A0S1
	EVyJrcEjl/xchKA8D6dhbpBcFiHIvsuyNKafq9zxEnmeqBtse4UHdJSw/djb82Ke+uwiR797iHl
	Xgh6kwNjbovXFfAGtbvynMgxZEVsMmS0JOo=
X-Received: by 2002:a05:600c:a012:b0:4a7:9044:a87 with SMTP id 5b1f17b1804b1-4a967202e9amr124799095e9.27.1793284530958;
        Thu, 29 Oct 2026 07:35:30 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-48e3ecd39a9sm36131724f8f.46.2026.10.29.07.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 07:35:29 -0700 (PDT)
Date: Thu, 29 Oct 2026 15:35:27 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Inki Dae <inki.dae@samsung.com>, keys@kernel.org, 
	Inki Dae <daeinki@gmail.com>, Chanwoo Choi <cwchoi00@gmail.com>
Subject: Re: Updated PGP key 0C4312B8 (daeinki)
Message-ID: <auNZM-X4fsR25aT7@monoceros>
References: <CGME20261029063727epcas1p442a22eaf19cb80864ca4f973f98ca404@epcas1p4.samsung.com>
 <CGME20261029063727epcas1p442a22eaf19cb80864ca4f973f98ca404@epcas1p4.samsung.com>
 <20261029063726.2680453-1-inki.dae@samsung.com>
 <20261029063726.2680453-1-inki.dae@samsung.com>
 <auMHShOWrcZpl2Vt@monoceros>
 <15516f6e-d1af-4be1-8c24-8ae07e6e1101@kernel.org>
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
	protocol="application/pgp-signature"; boundary="rav5v4qckxuk6joj"
Content-Disposition: inline
In-Reply-To: <15516f6e-d1af-4be1-8c24-8ae07e6e1101@kernel.org>


--rav5v4qckxuk6joj
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated PGP key 0C4312B8 (daeinki)
MIME-Version: 1.0

On Thu, Oct 29, 2026 at 10:41:40AM +0100, Krzysztof Kozlowski wrote:
> On 29/10/2026 09:54, Uwe Kleine-K=F6nig wrote:
> > Hello Inki,
> >=20
> > On Thu, Oct 29, 2026 at 03:37:26PM +0900, Inki Dae wrote:
> >> I have extended the expiration of my PGP key
> >> 3512 8EA0 5ECD 85D3 C6A6 C727 5738 3489 0C43 12B8 (kernel.org account:=
 daeinki).
> >> The updated public key is below.
> >>
> >> -----BEGIN PGP PUBLIC KEY BLOCK-----
> >>
> >> mQINBFByVSABEAC3YtraHYqLMBl7qG48vfX9K69OTp7aPpoThy1kzkYc89r+dFHY
> >> oJF/hJqzyVGeKgxaIlkpV2NTPeXvITZwDePfNlt4rrTgUtil22dFa6R6rX8UmUXp
> >> [...]
> >> vSaRm79eeDAhGPPkvBxwDf8Xz2x/AhnS9q8Ifwot+Yx+U966dx3ZR4jPhNmB35DW
> >> T2f3xOgbI20WBkIWFa2QDDERcGqcNfm3OFadwpN4rGXYuBOJIRjMO40S3QrUFsuI
> >> D3OLjvuZrrMH6BF4oA8MuqyJWeNUpA=3D=3D
> >> =3DMXVC
> >> -----END PGP PUBLIC KEY BLOCK-----
> >=20
> > That certficate (573834890C4312B8) isn't in the keyring yet, and it's
> > not well enough connected to be added. The issue is that there are
> > signatures by Chanwoo Choi (9CCDDF2CDEEBCF53) and Krzysztof Kozlowski
> > (1B93437D3B41629B), but they are bound using SHA1 and so are not
> > considered for additions to the keyring. (I added them to Cc: in case
> > they want to resign your certificate.)

I looked at an older revision of the keyring, in the meantime Konstantin
restored the keys that were removed earlier in a separate directory. So
my statement wasn't correct, and an update works fine.

> I did re-sign all my signatures as part of "resigned keys" effort, so
> from my part this should not be a problem... but that might be after
> your commit 2dd67ee0231ccc4ee53cb3d1fde10b122de1bd18 removing the
> expired keys, so maybe I did not re-signed that one?

Yes, I guess so.
=20
> Considering Linus' position on expiration date, maybe we should not drop
> them?

As written above, that is already a solved problem now.

Best regards
Uwe

--rav5v4qckxuk6joj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrjWa0ACgkQj4D7WH0S
/k7rOQf9G4UuVvYHRaMV352uUaXb7Iwm54MaMDJbZES7PpQQ5j3ilZRCIUDWBt/I
3X14fW0w4jmTfAKbLbAMfs94CCrejt+e4MnWEiNHGE4hb2J4WQl/Ok9nziLLU9Ek
ZTof7xK1csWBjcK8iIRgWRDjQ5KNANHjJjaq3FFI7TRtGMYF1z0rQT3Dun7F0MzQ
Eecv/SEUM9lzRbN5ZsjA9+YI8H/Fye1Z1rnNfv4set6W6qpXEIqN2Sedsf9QO0VM
8zw1milTMvTYkyL2RRWy+GR4LzTNcn2rqIqc/REJpW3D8wVYFuncxAWaTx4Wisdi
U3ueIQk0IIYZWIJWvs/SJdZkZmw0iw==
=mLoC
-----END PGP SIGNATURE-----

--rav5v4qckxuk6joj--
