Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D77446BEA
	for <keys@linux.kernel.org>; Wed, 29 Jul 2026 09:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785317642; cv=none; b=ZVn4ZPgynnMLsKpakthEk5kSO+NQ1UE8swVrnoLFiRDZtoqsGuMVYGqGb8cdC1I+IRPfBfoVS1uG7FsOh0kXWF5clpv2kdhANfCBmNpVQaG7tjLGf1rYVaXEb9ETGtNZaV69lhRDk0uKb1rpf1Dux9mO0T2onULl6NDWp0+EgM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785317642; c=relaxed/simple;
	bh=oubaJEuxM/bp1VtRTgEU3TJLgiKX3WiBVf+Zl51QjBs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iOd8RrHhrrM+577uH590lbuVflvvEU4le7ccfY4aXNzeKPS9+Y9UytuaImUw+IzZag6/Jdj4yZ3T1qa9UNvCy88wNPSVtM+rsrpA6dZmSfEDCFc/UCHLd9bSBN7z5YU7unf3y3Vm4Pc38GWsKc3WWUsCh/29/jDKBV7ruVCRtoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=EEyrfwRm; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="EEyrfwRm"
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-47f707e5d75so510863f8f.1
        for <keys@linux.kernel.org>; Wed, 29 Jul 2026 02:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1785317638; x=1785922438; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=oubaJEuxM/bp1VtRTgEU3TJLgiKX3WiBVf+Zl51QjBs=;
        b=EEyrfwRm4Y/65AsKl3Z0GNq3CZFUs4xledoE7kah2I/Zd1nzANbaN/M/zy4W88zDlk
         qYXckcQT9czL6e7x49+mt91vAqcbfKCfYrT1By7BTl+l7Wv0W0zcUP8DJ/36OCssd3ED
         3JTd9C2FMXumgdjQ/aUP7LY/akgMsou/vTG6feDm6VpVLCbNtatHQid495LJtUwU10IH
         Rf0DsKMzEAEVo8/Hjx4jeCPJSJHkbyn9tUZ4C+xWjXbQniXlNRS1ETv2Is5G3IVcmxz8
         v6ez/BYH183DaoGXTmtuRIJrr7lnt1n2RLinJaBFSXhjBlTI6o+ZO7xGMxYAvaFJG6Hb
         HltA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785317638; x=1785922438;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oubaJEuxM/bp1VtRTgEU3TJLgiKX3WiBVf+Zl51QjBs=;
        b=s/TuVrn6JrPlhQYRbcTERiP/wyCPfMYvCpakJ4/UKIbpo6aZ9nHt/DsVuGmwsS6AKF
         kqF6VryAbDJOq6CO5MeHuuwXFTbVKsz4hFMGMpyGOiyOMD03jNFZMuLU+EZb/ofCRFbP
         fUdKiwwyunIsQmZG5trEFPLyDeNga//j/iRzjBZPWGLwZO0FpLgZJjHXtPmtiLTbec0o
         NJT8z1JeOWSEakaj2Qd1iawm02DjqI4bEA23TJti1qTftbAXbQqLjlZjIDMTfxgXnyvd
         OtRJVM3c26RIevwSLqeF+mh7K8IngSspWWy6Z879fi6gIHEfPRfckL0WvH8hTZn/mqiK
         or7A==
X-Gm-Message-State: AOJu0YxBRNhIvrrCM3gGgE3S9sJ1G+Kb0uyIHvgy2qu8DPieJH74iqbg
	ik/KAwFxfCIYkZV+zuHvrAjMjAQ7EbRJY6NelVDx7rv1CkJ5udLRY7dbblr+Zum0x38=
X-Gm-Gg: AR+sD13BMoaMpkEKALetUNoBuq1j1eGqw1cYuF3aGifWcfXqGcN0479cSG7BVy6YeCh
	B5F3kBAkk8UGcQDjf4+AMiG1vxF9n4hKEWMaz70y+lJoljBzewTSDJtvmAHhN+1JyZ/y4a6XMy/
	+dyE+wurqEd7OaSPs8+7MC9q0dzKUFU5VokeoC5tJlVsv00+WObmoLJmn6jPHxpc4gY5lnqLHSb
	kEG+jWkzgrgZ7B3zWBfwZPkEfvHIfvEUELqMdsfFba3MV0MOx/+WE/AEdksFbrAOLkuO0kOnd69
	4CGDZXY3oVjOLRuz7VfIRSAGs4vgpveih7WqrSD8aagUR6Ug7+ZxNJaS2+R9cBQIqtwq9tr+WBr
	eu8WfsWqODOlQLOXU3KZSV5l4qNO6Rr0mzj1/UNTm40/3wHyj07GkypeVgahgZR4daVGHKSouh4
	zDYbQEsWShFgCrL+ZO1LLajvY7A87RWgdmmPU/8WvWujeYmRE84BBYrSSf1a+wnhB8wMDZAdmMh
	rYygldZJkZ0ghyxG4Y2A3K6768nlKDiTvb5Hnq8wVVf4i7eqaKETnGlUBbCAbOJ5RNNI+dsGvSd
X-Received: by 2002:a05:6000:4283:b0:47f:826c:7422 with SMTP id ffacd0b85a97d-47fb1e70bebmr6575955f8f.17.1785317637792;
        Wed, 29 Jul 2026 02:33:57 -0700 (PDT)
Received: from localhost (dynamic-2a02-3102-8c5c-0740-065d-5c15-ad8e-c9a7.310.pool.telefonica.de. [2a02:3102:8c5c:740:65d:5c15:ad8e:c9a7])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-47fb6b0ef25sm6360864f8f.24.2026.07.29.02.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 02:33:56 -0700 (PDT)
Date: Wed, 29 Jul 2026 11:33:53 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: keys@linux.kernel.org
Subject: Re: heiko@sntech.de
Message-ID: <amnIKs5_R8zMc0Ri@monoceros>
References: <3383405.aV6nBDHxoP@phil>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j6msfpuyjxo4qlml"
Content-Disposition: inline
In-Reply-To: <3383405.aV6nBDHxoP@phil>


--j6msfpuyjxo4qlml
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: heiko@sntech.de
MIME-Version: 1.0

On Tue, Jul 28, 2026 at 04:56:29PM +0200, Heiko Stuebner wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mQELBERTj4ABCADFGnPgqgaWdMNZZeft3OMUO0eHc0GgHsVwpQDxH8wJjJ71c2zD
> Is62dNr0rGezDCAwkEewq7U0h5xN4kCuc1Op704rXYHvq7zsOoHF+4xwqzQz9Mkm
> [...]
> 5vRtbMBxeBDKhzubOxUAy1KRjaISGTnJRN7LHQY91O2rInZtN1WWT39TT5nKctHi
> japLpIdetNdyWqMA8ySGE2jvjXPoeZGbbpq3FkG0ZseT1UNZODYnlLIr65R+mXGR
> 04h8
> =3D8lSE
> -----END PGP PUBLIC KEY BLOCK-----

Looks good. This contains new bindings (for one UID and one subkey) that
are using SHA256 now instead of SHA1 thanks to `sq cert lint --fix` and
a new ed25519 signing subkey.

Best regards
Uwe

--j6msfpuyjxo4qlml
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmppyP8ACgkQj4D7WH0S
/k4o7AgAhkAhpBl0nDGeb4jBCKW7M2bULtfUgfHi7ihL6PsohUcGX8QvaKuRmXb5
yc73Bss6YyO+Fe6X6Nhr9KzGYoL3r0Mw20aJo7o05KPb+0ptjgR23Xgq9b0VYSNT
KrBo5kbDys1NZGazee5FUTBPZ4ccJfoKH/PyZvdQeiKM9UYT3/eYDRFDDpS+MvR/
3be4dTgzvZGhWoFgdmIQk6nmAwIglBura0qfl1fCdzog2QnAvSrNtbTwpNP7o7l/
87cm00m2vcnpoWM3Uq+HJTbshCemp0rd489daVG5YivKMokFdekomnGtxXLA9i7c
UkK082+aAdyNyR7I3PA/qnpNfB0jfQ==
=Sl22
-----END PGP SIGNATURE-----

--j6msfpuyjxo4qlml--
