Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6798A3F4117
	for <keys@linux.kernel.org>; Tue,  9 Jun 2026 10:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781001437; cv=none; b=P9qJs6zMe4LJngaB5l5OOlzTa4hBJV3k+iSG3hRifIX9wtTLqY4mlUK1ws7mLF2oeUPsQCRNsKuqXuSWXkpQz1a6+kSckJV+QH6Pj9Wb5jQP+3iHMuoPAA23GNc9cChGNtL3z//KmEUNf15BRi2AlXyDmfw8g/p+IW6a6f0csew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781001437; c=relaxed/simple;
	bh=vza438QHAWJNZLS9t4YdF5KQNGTkccCkU8brdNQHky4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rSNL2OYF9VPmH7xhzbEvnuIIZa5ZONOd3HZCpyS7lBfhmlVdxv2D8avtg/x/iHA2UtDpRBLlZNxe9rCGAciDNvojbvE2D265hiz6dq0rWw+s5MVy6eTQ+b1sU73V/fn8XzJi1L0194S/QWk94XISfOpIRf/DqvNRLvSRVdcINwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=C/J1PxEX; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="C/J1PxEX"
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-490bb83a3f6so44503065e9.0
        for <keys@linux.kernel.org>; Tue, 09 Jun 2026 03:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781001434; x=1781606234; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vza438QHAWJNZLS9t4YdF5KQNGTkccCkU8brdNQHky4=;
        b=C/J1PxEXY/b00NmcKfI+CQoeLa0YZGR3yxmSRsRpSSNoOfD9f34JgDE/xie2su1/id
         B5VkgyfGJD04Wnif29BRlnNAfTKfu7Xz6OLqO5wTEw0tQD7y95XNVxqXateKmskxrnil
         A3IWym8jcYOo85MzEYSrSv7DTKyjvOeestpagGgcFDlWzjT+wzjO9tyC3ZYTGB/WUsm5
         3/jzGjFOX54PtZYfNoKC4LjZhisG+e2nbI0YVBMzHT5Y+lfsKy1B+Lz5yauTIj5F+77x
         iwtB/v16w9a/ikzS6Ku5hgVe8T6F76H2DswqfWvc5mN2+ETzqkcx055/ZlevVmzqE/16
         40Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781001434; x=1781606234;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vza438QHAWJNZLS9t4YdF5KQNGTkccCkU8brdNQHky4=;
        b=dGSwRjB+Dhn1Yo9Vj9FSLtsV2qMCtbzwe8/bSwzfec8GX/9jLNm+0eSXr+h9Ok0gYp
         uE4IFXOjL+ONrOZ0pmtruA3vzCXa5ZEfM+CjkHVV39529qzhO++BflreXu4CEt8/Xufw
         HIyFXIVzQQ+yAU4gFAaxT1juAzatS+RXm+yqyExsnMP1u9c/q5klfvyOchPRANVi3I9m
         FqVrsblHBEQLfoiBZTkKVW+xTLZaHMapo/VH97n4CX+p3fjvh6jfU6EOxWFTeUipHYQe
         xTajl15XsiHSF9bSiZbjsrI6a193scHvrTmiQOcbNNbc8obg8bSS8RblydkiMximHdo6
         WF1Q==
X-Gm-Message-State: AOJu0YxE1Tbw0wV3OUiofpSeY/iUem5mqfZi5P3bvRcuotS8UqtCoA5M
	OLaxxjlFolj9H18M0kZi75/zw71BMcD4qVFTFApV9YCrVag0ZGtwa0b+IEDHQYw5tbA=
X-Gm-Gg: Acq92OHEXVxdHZWOyXFNPL6zr9Dkqh+OGHSfhaTqwLJfb37JtScQApLzF8B+EvETvAF
	OokgA3J4Wboeqz1PXVwHM9Tp92dzcMKVRLKpRxgnxYrtpn3RIsElSYks6xTZXPvP+rMScPGOn3S
	tj3fUoQOwL15m/TykgcaanAhX4Z7eunSUWOtxMb8Tm0UVMv6aQLrMOeHYdxtFnUx7X6S5ZWHbAT
	OO+HLN5J7BYQJ1cj70k2jk9Wv9txnueqzPkDWnUmYPLrfhjqIflN8O4C2p9zRM0MUJFfxUETDTm
	eClMu1sFix3n6Xx1AtdG3xNRBorKjWXDnqXcVwrQRfl/DUnAJcVEWf8Aqc2fhMtiq92dGWh9tJr
	pAHGC/MKXgvKQA+BwVoW0nh8cFnyCUNu70sHQUQCSbhVtSOLNdJJ3oWANXKXM+/FW8WURyhrkIg
	L7+VHjs4hm4hh3fkEdR/aj+OfcekZD04VDxEJBqPVkBUqurEHOWuaH1vAWkjhwXawfGKP8kfz6I
	g1+Qdvrwc+ObdFxxYvv7xg=
X-Received: by 2002:a05:600c:5250:b0:490:b9c3:6c69 with SMTP id 5b1f17b1804b1-490d7237273mr22704685e9.30.1781001433757;
        Tue, 09 Jun 2026 03:37:13 -0700 (PDT)
Received: from localhost (p200300f65f47db04afaab2de691a0087.dip0.t-ipconnect.de. [2003:f6:5f47:db04:afaa:b2de:691a:87])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-490bc3cbfe4sm482110755e9.7.2026.06.09.03.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 03:37:12 -0700 (PDT)
Date: Tue, 9 Jun 2026 12:37:11 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Greg Ungerer <gerg@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: resigned keys from 4E2415A9A1BD2F80
Message-ID: <aifso53wnP04GEut@monoceros>
References: <1dfc112b-8d94-46f2-bd6b-8f5b5a1e7fb9@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zeoi6rmzdqpmkl74"
Content-Disposition: inline
In-Reply-To: <1dfc112b-8d94-46f2-bd6b-8f5b5a1e7fb9@kernel.org>


--zeoi6rmzdqpmkl74
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: resigned keys from 4E2415A9A1BD2F80
MIME-Version: 1.0

On Mon, Jun 08, 2026 at 10:55:57PM +1000, Greg Ungerer wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mQINBE6pApwBEADlF8AZqyd+JB5EJLv6MzpSbHp4784zzMW0QlDMltRgnpE8uO2t
> vPJ/oUhLL1qxa/qPEoyiyc6l5SkzPR7J8eqGBSp+4PtAepD80g59hgtsSfSPPPtV
> bXLRZY3McnGq4sLEnFLTsFAPwMHS+bwwp/LN6X784rpUbVg1HonuH1heSu/s/w9V
> bW7b+VaEpxJDlYKgYF6JK4wftmlsw6KaZs7eckgAzr0w2NxD6m0uByshja3u+CPh
> [...]

Looks good, brings two new signatures for Arnd Bergmann's certifcate.

Best regards
Uwe

--zeoi6rmzdqpmkl74
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmon7NQACgkQj4D7WH0S
/k75hwf/UUBpC/DgBjK+7ZEC3m+FNFsb7gr8Ru2rQGhQqixFkLqVJ0gOyx3Ls7Zd
5AxCIkL98tJF0dGtGkP5dBmbgUQMteWhU6UlNmAXYbYh1i5di9MDxD1+zr27PREn
H1ImrIr3GAE9tNJ74411SeSDkhnhj3cTQFWepOKCXV4A3OJqp2QXZCby1hPXZ5OJ
7aoEyg38em2fwVhqKu3+8+yEmtdxc044V/d0sY297VRMI9dn3BoLoQjZYamPKdjA
FIuO2ftqyKt8vXxFRfXuoeCRFpBul8H/L4fERPLiOoTKLqHUQSH2HIlONlQFJPRa
4YNtkPm44saTEJlN9eVhFvT/jVrxZA==
=2Qtw
-----END PGP SIGNATURE-----

--zeoi6rmzdqpmkl74--
