Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EF51DE2C5
	for <keys@linux.kernel.org>; Fri, 28 Feb 2025 22:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740780741; cv=none; b=kFJRpqm/8k1937YjT52z7Z74OFMY1yXIC3qYIyK0L2H4NdGCXKbQkCLUUzyyCESy7WbeTs/rvjG0XPV9l2vm9qPdVtXyCgOKvxLvZuJ7r3zQUJ79kvqAhe0+AcvWXNY6/N5SCZZVo+tL2hKX7AKX7Qal5oy2QsK2Yj8P6RsjsMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740780741; c=relaxed/simple;
	bh=dWSVgEoHNPopXmgqa6tsn/nJC3BNb3qTJn73+0+RgWk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Toxd86Udq5cyncWACp+RXqEW75MIiizIsvlqaaUXZyHQtxaLMG+5qShCqJOyHxyUAf8YKQHqD4XcbARmxMg4hkG4nZFFZVQWTHQckwxJW7UDQKJuKqhRhrXICACb2oAjVCehVk8LsBowaJvBudLTSchaHphMW6yUzPRru5EliwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JgMxGlhH; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JgMxGlhH"
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ab78e6edb99so354316966b.2
        for <keys@linux.kernel.org>; Fri, 28 Feb 2025 14:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740780735; x=1741385535; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9CkGNQVM/OFxLhvt3vtK8SdBPO9BeOIsd7dHRc4ajFk=;
        b=JgMxGlhHkwxf68KlBqm/5QpikU/T89mZ0DbN+QRKkE3WPg60uq0AoAUh9lYiJdHGAt
         Jl/5VE/rS9UkkdrYMWj6e2Y8U64ZAfjvoEusm0ubDb1A2iFs3m+QFStCX5omGnceadn+
         zB8prAFqrijReu1fUhAq9zANmMuXKwMveGiJ9FD+qIE3r6FO5eQUBgFEvV2d8f86GTaG
         Mx0BF9pT5+RlsIfnJF6UcwGEHGOdBCsz3bQQC2BB0HgP90XQTlglijpd6BXO74zjZ9Gp
         SrAlaIfbIb8UnlYLHzCr4/O723vMcXXt73k0lYrxfGCTQFmPLWhBIh3JUP0T2CBh61fD
         y9Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740780735; x=1741385535;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9CkGNQVM/OFxLhvt3vtK8SdBPO9BeOIsd7dHRc4ajFk=;
        b=Xw8MYtQF93WDtMOr3JVBVxCeQb+VAaNCyD2+akWHdPR4lxq6ozXnYf7aY858W56nbc
         ST2bQUXjfjMCGjvLgH6FEo8+kL9AW/SIbhYK9+LpZ03M5SVmHaDkZDmyV3SlGEcpXB+m
         eAFvl0edC2vojmvHm9+r1h5fsbKX6HxsrevFqIL5f5UuFekOPOjIT7AMYLs/CYp7Yvcu
         3CYkX4pqodHPe4vNmkSC2Aq1HTCSML43eookI304bUUpzuZ1H1LTl+41RV0Js+ITFZwT
         GABf5vurX8zrpTsGyu9ZSSXg7TgPqP4PpjhqryBJ00ElZkEahZCSMdtjERWKwN9a6ol/
         oIOQ==
X-Gm-Message-State: AOJu0YwsF1IX5KRU3p16kfXtibPG4OzuM360YIydo044ILYp2SE7jmPJ
	f/Pad4wF7bgc+vtbrGq8Vee8128C8JTKoixuOtVOBLp1kPnamIAZxum7l8OxjV7A2wph11/CUV7
	z
X-Gm-Gg: ASbGncs4DxBHBe7f2hNYtRPQDqQoV59RU/0QpYEBNM7251s5oSAjJt5jNAn7o1xKSgs
	nzv5kq9XVx9DaGxTgdLnbgcWRepPer4OEzHh8G5Pzw+Dn21KZ6mfwBltW5ncnlIoQ78zBlbs+S/
	PZ7l3LdYNazdNWyo/UslmPguE8Ga1XC9xYu7ej+zoQdXG5o4y2Rab1k643nKscHZD2LZMN3L1PG
	ZTzpNy2cBtTaqAGurEszv9xv843I4qXU8zgkhQkiKEQyz7BMWD5TFQj2qWp+GeB832N6szePuEd
	sevb92uH/JLpNwkqT5WeLtd6nJLjBao=
X-Google-Smtp-Source: AGHT+IFvNhMOHmzoZz1ptw/OsWF0m7oUmjY1SMi3WmTALN5ce//6SOcOJnzUuTwxF7RxcErfKyC5Mw==
X-Received: by 2002:a17:907:94cc:b0:abb:d9c6:ecb2 with SMTP id a640c23a62f3a-abf25fae466mr539093566b.21.1740780735171;
        Fri, 28 Feb 2025 14:12:15 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf4cbd77b3sm35544266b.74.2025.02.28.14.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 14:12:14 -0800 (PST)
Date: Fri, 28 Feb 2025 23:12:11 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Cc: Kevin Hilman <khilman@baylibre.com>, Ahmad Fatoum <ahmad@a3f.at>
Subject: Re: Keyupdate for Kevin Hilman and me
Message-ID: <b2il74ut2kchr2iqbtqtfoekrwyyhilxqxm3ufizxu5xumxerz@qhxiqpbuksw3>
References: <2ope4rjik7vfubpc5e6s3q3x3yeuwuwfagk7qm2ii7bshz45vn@zwknoaf7whoj>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rvnltz3lyw5x42sm"
Content-Disposition: inline
In-Reply-To: <2ope4rjik7vfubpc5e6s3q3x3yeuwuwfagk7qm2ii7bshz45vn@zwknoaf7whoj>


--rvnltz3lyw5x42sm
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Keyupdate for Kevin Hilman and me
MIME-Version: 1.0

Hello,

On Tue, Feb 18, 2025 at 04:47:55PM +0100, Uwe Kleine-K=F6nig wrote:
> find attached the recent version of Kevin's and my key.

With the recent changes to wotmate[1], Kevin's key as attached to my
mail won't be importable any more. However in the meantime he fixed his
key and so an improved update can be applied using:

	korg-update-pgpkeys --refresh --keyserver keyserver.ubuntu.com --keyserver=
-options no-self-sigs-only E2DCDD9132669BD6 5937189AD3FBC665

=2E The other relevant change here is that my key has a new expiry date
---the key currently in pgpkeys.git expires at 2025-03-16, so an update
would be welcome.

Other keys that would benefit from an update are:

	E289A1F4351A51B3 (updated expiry date 2024-10-05 -> 2027-02-18)
	39CB544D6527CF60 (revoked two old uids, two new subkeys and SHA-1 issues f=
ixed)
	2EADC69438E476F9 (updated expiry date 2025-01-29 -> 2030-02-21)

Best regards
Uwe

[1] https://lore.kernel.org/tools/56371be75e13d288fd61e4b1d5ddf228fe01461c.=
1740729275.git.u.kleine-koenig@baylibre.com

--rvnltz3lyw5x42sm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfCNLkACgkQj4D7WH0S
/k6aUAgAhNACC85XYCxGdwRddVIP9k3sobNrtnFG6MqSLsWVZPvz0KSOieQKrRom
OP+u+nZghUntz/a5DyLRgKCInFanjJnP+hVgKhsBmJObzohLdjE0ComJDTmI6zvC
D8wvdavjUo7qtwp95tqsPyZ38LIA7Is9HoIi5zEN4+z5OBo9SFM/cR0RdVClQKtV
U9PXqzFZ5pWQqw8Lw3zESAg38NtXvOEYXMRomOLxmAmvqhHWyp/Ty0tCCgBzDcV8
XKcSHZ4MEEDeywBY99SL3j3dWqYcHhWeYkftnBQgWjCBv2twsq5jGq/9cT8suzBi
Y+YEPQmP+1/JC9g/DEzzPBwVyB7POw==
=E3vu
-----END PGP SIGNATURE-----

--rvnltz3lyw5x42sm--
