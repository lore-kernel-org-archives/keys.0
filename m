Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847981F5612
	for <keys@linux.kernel.org>; Mon, 10 Feb 2025 11:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739188479; cv=none; b=EVrzxhYNdcbedfwn70YxIsuwX/OdJspuUP4uGJVpAyGUp1zGt1mFagXCopLjsmuJ0OH0Z0QZBtL1J4rDKc9xmYT8sn3mmNI+xXqKQsHIb8Qu7O+aBeNTIH1uYELAdAgq5ixNrodpd2e/JzrQx6VAkQyDkS3n0Zg4+hfQM/Oou4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739188479; c=relaxed/simple;
	bh=gnnMQXJvT0muqg1Z3N6UV0e/EgRXdmBcTr1PYbBZlsY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UkE2p6jOqR2cyqIAB+RhYDghB7jEOrliOeh3ZHmOFxUXrZizkGF1XXTu1KPXoSp3WYpuWSJUr5nCeLy75AF5qZYrJJdGP5O5VbPCdH27T2aP/Sdfq+yjhiqWUmc+1G76gEbG/rFCEMdqMw2mTex7Zgkp0ltQFl0qDPwOjonI9Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PZk+KbPx; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PZk+KbPx"
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-ab78d9c5542so513711866b.1
        for <keys@linux.kernel.org>; Mon, 10 Feb 2025 03:54:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739188473; x=1739793273; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iJPAarmOcBxkiMjjGuWNtalrG20IQpA3DCMO2eoyXUI=;
        b=PZk+KbPxxgf4NTJL9wWtr7PuYTFVtnB9zvWNmGJ4Io6n4z3+zXalBVz9BrA0nZ1toC
         otTZ6vcQ/27T+qNpAgjciSrOxTL7zpyppP837Sgo7V0xfDekz9wSdDrHAqgCcAHRqtSu
         j5ZvYrSfT5Mxd7fwQ6bT9QAeGPLaFvpIFH848152guC0WYS0uENiMdhgPw16xDWSMhfp
         c4uDJgTjn8aGcxiEV1kAoFdu8QuN48VXw+VYwuvcQOc7qHEmrvOnFCkhvlKhgxJ6inu7
         AfZ3Juu6Zw5JA27K86khVfvWmmNeY7mMCiwlck60v0UvfP8rFj9YRNP6Iu9V0BChxBaT
         84wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739188473; x=1739793273;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iJPAarmOcBxkiMjjGuWNtalrG20IQpA3DCMO2eoyXUI=;
        b=Etp2qCTL4IP73iguzcBhb4LvK3xtOQO9x87Y0VstGhmL/dG3LOclBfq7pfo6YjosA5
         lS/CP+tl/6Ztu1clTWGDuw1Qzbx0X2Mhs5kOHvR0k1WL4aC4PnmxTlzUAhPGwp5oAaEJ
         kNRPYD/riy/e6h7NmlJj++SUZEIjgf6KRM2m0OxoHRNEXpEGXbr5jWuA/M7A1w1yeLn3
         YWIin8frBDnDJfAPH+MYL5bf8CxkL2F3pwa2mC6qwYf3bKoerDfM4P7RgWs0gcnJRWVK
         /1StY3Zi9tK8BA+ygVZ/dpw1OqtoYoZ43K+qf3cGNWqxIgX6I9YpebODQPowMaxSLjxw
         3E1A==
X-Gm-Message-State: AOJu0YzYzZIW98dc7QuZyRQCeg2l390O1gpHZX4AGRbWGuipjBQdmHC+
	2aoRBqbl3/0eghRNYmMEYlrqFDjboKF13zGXmIDB1HTltj7vIDs9r71IYmK675gBFe8I6B+IZCY
	YiPoQ3Q==
X-Gm-Gg: ASbGncs+Ik8FQRiAPpo0LL3NDUROvpgNuNEQdgpNq7SLmjWqFPIW6Co14dJ77lnRrSI
	Zo+9hj2vfbrhyCBuna0xXpU4jIej+1tJMp3Yul5dhjOaj95mTUhHS6NSYYPh8yy+RxX4YiglQvU
	wopXXJizsS6hH+xGGp9cLV9LuPowrg4DtuSx0NRHBJctOUDvs1Xr+DYWRd6GadvacriMEc1Na5T
	jI/mxDVZMFEZFtKJmbniNQ5+zuFoqDciB/eqVHhqTWtkLcT9/qdE8gEuk2iAMac2wccRYqyV4uQ
	4AA0tU09dilBuAyiHMp1Gz1tb8+6qANNytHU4CresLvBIb4hJSH6AewOOg==
X-Google-Smtp-Source: AGHT+IHrCkXxtN9NNSeZ0h+xkHp7egJ69ACRuGWW9JGW5JCrg7bClZySPws6Q8vPcmwQCUD5MxSpRg==
X-Received: by 2002:a17:907:1b28:b0:aac:619:e914 with SMTP id a640c23a62f3a-ab789aad2d1mr1659255466b.16.1739188472869;
        Mon, 10 Feb 2025 03:54:32 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7c62c464dsm159149066b.28.2025.02.10.03.54.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 03:54:32 -0800 (PST)
Date: Mon, 10 Feb 2025 12:54:31 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: [PATCH pgpkeys] Drop all keys that expired in 2023 or before
Message-ID: <mb6mvtmfhbbtfldcia2bxtf6on7hpw54myjrg2r4tiylkd7nvt@aotlrel6epzy>
References: <20250210110412.260635-1-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jv2wu7ely7orubxc"
Content-Disposition: inline
In-Reply-To: <20250210110412.260635-1-u.kleine-koenig@baylibre.com>


--jv2wu7ely7orubxc
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH pgpkeys] Drop all keys that expired in 2023 or before
MIME-Version: 1.0

Hello,

[trimmed list of recipients]

On Mon, Feb 10, 2025 at 12:04:09PM +0100, Uwe Kleine-K=F6nig wrote:
> The keys removed here are all expired since at least one year. Given the
> keyring is regularily synced against different keyservers, it's unlikely
> their expiry date was updated.=20
> ---
> Hello,
>=20
> Note I didn't check which keys lost their trust chain to Linus with this
> change. Not sure how this should be handled, so I only mention it here.
>=20
> This commit is based on top of 89e985e5224a ("Add 85F56EA4E9E8138F
> (Daniel Gomez)") of the repository at
> https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git .
>=20
> I guess it would make sense to wait a bit before applying this patch to
> give the affected key holders a chance to update their keys.

Little surprising several of the email addresses of the expired keys
don't work any more. I got bounces for the following addresses:

	yamada.masahiro@socionext.com
	kay.sievers@vrfy.org
	boris.brezillon@free-electrons.com
	boris.brezillon@bootlin.com
	kay@vrfy.org
	kumar.gala@linaro.org
	atull@opensource.altera.com
	paul@archlinuxmips.org
	nicolas.ferre@atmel.com
	shiraz.saleem@intel.com
	ben.widawsky@intel.com
	fengguang.wu@intel.com
	peter.waskiewicz.jr@intel.com
	inga.stotland@intel.com
	galak@codeaurora.org
	pburton@wavecomp.com
	paul.burton@mips.com
	pjw@netapp.com
	brian.gix@intel.com
	hao.wu@intel.com
	pj.waskiewicz@netapp.com

which means that all associated email addresses of the following keys
are non-functional:

	Shiraz Saleem (31CFB049778EB2F2)
	Masahiro Yamada (3D8B01079DE0DB06)
	Wu Hao (94F94DA47B5C91AA)
	Kay Sievers (A9C176CC7FAC7D56)

Best regards
Uwe

--jv2wu7ely7orubxc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmep6PQACgkQj4D7WH0S
/k5KmQgAhlWvjZF07sQp5RDB8gqZ81VLDiJJr4ugkJ+/d1obI8OpmDITUbdaANAc
q+q/pRsIOuC3lPBx5LuRbGwIiWdtOsR78r9DfOWo5jS8+yfiNwMbqyz+TH4w/TTF
M5nLLC/bIfw+dNvB9bBggxplNhGujWK//3/NRBV8NRAdJO+yeM2+15mXQkq2PaqK
rZ7aPWMylcXhYNnzG2ovQjrNeD7HPlVZkhXl03Q1dzT9pHhbJI7MyqE25ffjAB95
Vx9RTFe4bWWDBTM1YwSp/IkqWFYmCUI/n2b6tyxU2VdUDIsN2AHQ9XSFWOi1sFQt
wIeFbulsXo0M2H7cGxrtjkrmw4jQ5A==
=880O
-----END PGP SIGNATURE-----

--jv2wu7ely7orubxc--
