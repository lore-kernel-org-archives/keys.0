Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A898C8488
	for <keys@linux.kernel.org>; Mon, 16 Jun 2025 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750085855; cv=none; b=ivxIn2oWuYwnzvuggycadWoEcWHu+FKNYI9e8+tfcUJ9CJdq5jEuVuQeXUyIcIsNg3vGNxjwK76TAtUq3SvlLxdrZ4SCAlhA4NABIZBS0jPZ4waUaDHQxTpsfBvy+DVsdP3h1g3GwhkgF1mo6dRiKdg7lmt09lxvgMKQ04ZlXOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750085855; c=relaxed/simple;
	bh=ahfucpETaMsPV4bd0hWmjhzh+5hZW3VgtKKX7T0D+O4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W+VXl9cPj4kWjCYElhoqux8/a6Cb5cZ2PcMgiPQMGt11tfWHWHYgun5bBUEUFDLn7qhN6xjLw3XJt4ikhsEY/hM5Z3F9C2R5xrECap99qmbGM3MuZz6TGnGeVGhhI3xDMsD3c949WWOng6WBey0t5aPO7Awda50hiWCpyjh45oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=T2qibmKs; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="T2qibmKs"
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-442e9c00bf4so39108245e9.3
        for <keys@linux.kernel.org>; Mon, 16 Jun 2025 07:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1750085852; x=1750690652; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oyLuQb1XoNDpW3uU/nzkkqFgRsnSdtI5HV3NCQp4NZg=;
        b=T2qibmKs43AP0Ja2SWScnTPJVyJgGBpiy+/UwGudDkUilXcfgAleQgqrETficbUZGf
         Fn5Dtk3Ye6CGi93PpK6Gyqh/62FhlYt0UmeEz3a0cgKIuP4jrLxnnCN+O+J9Ac0VABkL
         0rZ93kS+zSv7B7TO2IO8baHZVjnoFDTMeO4Lawj7kMuDiMfwJj/c3CLFW1htLvJMK9Vl
         hQ4BzFDRXjPFlXi7MEvFtsutJmXepPmZDXVFjJz/PBa7MKgRGIl4bi/AX0lUvjZORl2Z
         EvpQSXp+OYECpuwiM/I+k2KPBLdXVoR7e4anyRMbHcdzw4x/DopUrQarOC+vBO1ITrjF
         Lf9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750085852; x=1750690652;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oyLuQb1XoNDpW3uU/nzkkqFgRsnSdtI5HV3NCQp4NZg=;
        b=bWs73CdiNoVVI2sNvU53K4YK2sQd9u5l999MoF9dt7lyJ19cKG/B7nsT7iyLNxFX8f
         PY0RFncOT0yfBJgMvStUAMgrBQsD6o4GsjZaSQDMVuFUYkVmEVdDk4FNQcBsNTGX2V/Z
         dV5TlBeOJ9mc+7BZg135imlVMRvaTHQDJ5Y4RtODxF3Kg2R6S4H8nyLK4p9tEyUWkJR+
         CTdTBVDGuy+2Nrzxi+qmuQhtKSWNA4g71AVsr4rumRnFqqN/fcsxi+BEUAFOHVd8D9dv
         o2B3oOwCVVOA9R5h3JkOcONClFZgD04QOGKFPkkdpW80hP/LdVFSZGTVEojCZrwbhQxS
         z33g==
X-Gm-Message-State: AOJu0YwC4FSNfaBBcYy/c/M7DbrGcq/0Hw5DLYFUUoPYYOxDoUZFlp4E
	b5ZrC9nI0a5P5EK8ddZFsVjAOQEzt2+u7m4fxKQ717DTAYO0rI7kDCdCAEs+moRCRjaQHkEAW9x
	o/T/5
X-Gm-Gg: ASbGnctPUi+mzX7bN9zK1Da5MZhM/6Mae3o3q8Ev74nO70uBhI32TEM/o7Ua/HBq93F
	01Tiz06JeGeHM657s5zR/zvK/opy31ust4fAaaPYlUNxJ0uvqxF6JxlLD4vQY9OeTKd4gs9Ajm8
	1jN8b7EGEgEQKTxxybgSz3IPffAFYMCH1yvjYbv/a6e0V0Bcmf/FLNHelGW/tRCCaCLvjoAfWxq
	WYGR/jU/5rgTlCepqYFMEQ0lqeNPO+LjISRk7LSDb7R1wS/j2DkTL3tTOD61bdC8Azt5OPcp3ir
	HfYLpDW+zf+rJZcOozh1b9skiulW3ch3EPCVq6Z9R6UTKaLh339OcBN1falc5T+2bQOi7wHkQ0B
	gw7jW7No/Tb+ceAYNNWvtvcajYpBH
X-Google-Smtp-Source: AGHT+IFT4qMoaQH1ziwmJXDe115HpFZcukLgyuNq1HWLhE97Pu7KMOSVvU7a7lfl9a+9ntNMMGC6rw==
X-Received: by 2002:a05:600c:4f4a:b0:43d:9d5:474d with SMTP id 5b1f17b1804b1-4533c9efc7amr100427295e9.0.1750085851850;
        Mon, 16 Jun 2025 07:57:31 -0700 (PDT)
Received: from localhost (p200300f65f13c80400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f13:c804::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a568b403b4sm11074134f8f.80.2025.06.16.07.57.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 07:57:31 -0700 (PDT)
Date: Mon, 16 Jun 2025 16:57:27 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Drew Fustini <drew@pdp7.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Drew Fustini
Message-ID: <2ofzjvx3ee4xwjdjfdikrin4pu73rmzj44yfczxflpparxyywr@qe5dat3qnsra>
References: <aE9CW1hJZ08QkUav@x1>
 <aE9RH0aFpmtmLdyk@x1>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ok5nu4ulmkizdkc5"
Content-Disposition: inline
In-Reply-To: <aE9RH0aFpmtmLdyk@x1>


--ok5nu4ulmkizdkc5
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated key for Drew Fustini
MIME-Version: 1.0

On Sun, Jun 15, 2025 at 04:02:55PM -0700, Drew Fustini wrote:
> On Sun, Jun 15, 2025 at 02:59:55PM -0700, Drew Fustini wrote:
> > Hi, I have attached my GPG key: 1B6F948213EA489734F3997035D5CD577C1E6010
> >=20
> > I now have two kernel maintainers: Dan Williams and Palmer Dabbelt.
> >=20
> > pub   rsa4096 2024-07-25 [C] [expires: 2026-07-25]
> >       1B6F948213EA489734F3997035D5CD577C1E6010
> > uid           [ultimate] Drew Fustini <drew@pdp7.com>
> > sig 3        35D5CD577C1E6010 2024-07-25  Drew Fustini <drew@pdp7.com>
> > sig          1ED2916A667D8802 2025-05-30  Dan Williams (djbw) <dan.j.wi=
lliams@intel.com>
> > sig          3373170601861969 2025-06-01  Michael Halstead <mhalstead@l=
inuxfoundation.org>
> > sig          EF4CA1502CCBAB41 2025-06-15  Palmer Dabbelt <palmer@dabbel=
t.com>
> > sub   cv25519 2024-07-25 [E]
> > sig          35D5CD577C1E6010 2024-07-25  Drew Fustini <drew@pdp7.com>
> > sub   ed25519 2024-07-25 [S]
> > sig          35D5CD577C1E6010 2024-07-25  Drew Fustini <drew@pdp7.com>
> > sub   ed25519 2024-07-25 [A]
> > sig          35D5CD577C1E6010 2024-07-25  Drew Fustini <drew@pdp7.com>
> >=20
> >=20
> > Thanks,
> > Drew
>=20
> I think that I may have failed to correctly attach the key. I'm trying
> again.

In fact the attachment to this mail is identical to the one of the
first. It add a new path Linus Torvalds -> Len Brown -> Paul Walmsley ->
Palmer Dabbelt -> Drew Fustini. Nice.

Best regards
Uwe

--ok5nu4ulmkizdkc5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmhQMNUACgkQj4D7WH0S
/k4OAAgAlFFLHx56fURhEvTiFS+B9sjcJzjnI+0yy4whrsUxJ85Ra7BZug//x0YS
yS+2UnfJ1Oa+eB5+5oBOzz4gFlVH5HI32jBQ0zBw8FNJ9kUY8KrEFFVZiIibPhMw
Ntd0Lk6g3i6kId5c0HCXAuPOVyYEe6+41QjNNqwA1Q4XZe5t7xYAMn9rqJCbKD17
F2RC2tlT2pS4ODLottxhjR6H6Kh3ZdoFvW6to4j9MuCU3RgSlrHpnn17Jm8fE4r2
HSIFozIqNL4dBSDoXlrmRBWopr6P5lGzTZ+HoVsMIFe6X+5cbRPAN5wLnXWgsup9
IIKvIrM+Jv6k4HxkhgHcdKJbVPjJgw==
=hc4L
-----END PGP SIGNATURE-----

--ok5nu4ulmkizdkc5--
