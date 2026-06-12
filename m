Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA733D6CC3
	for <keys@linux.kernel.org>; Fri, 12 Jun 2026 07:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781248438; cv=none; b=qNZ4zLEJzMcnsty4LvQsYaF4g82MuUrNp5wqFKUYvd/ATtFZOA6nRc2VTqEFMUHJRCVa7xzCCi7gFt8lBvxoDDzB7gn8WVQR6JAK6jaKe1EsEXdLtYD6117PevNSEK5fg9LhzAZKTS5IiSmGJpolRJ+l5MwntTP98xmm7iqc7zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781248438; c=relaxed/simple;
	bh=9k1xalIJOGEGKLf2VEsf1gVe/YurHJb1Wtl9VRU+Ijg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VbGmXBrrr0jDw+jhj+u302TaF/VIYkc1JNVMXBq+Hx56/muh6gtAGVEVHfuzU13yBBWp/Q/ZVMSoDYseC7gV6QB3TwvmVIOLP7nOdbGRkcjiIQz20v6ldoa3FmJttuAc7iqmUhEvnS+4zsSyYxsuWHw6se9cAos8QaQ2pK5nbus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=V+DXpMlE; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="V+DXpMlE"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-490abf12f0fso3437245e9.0
        for <keys@linux.kernel.org>; Fri, 12 Jun 2026 00:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781248434; x=1781853234; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9k1xalIJOGEGKLf2VEsf1gVe/YurHJb1Wtl9VRU+Ijg=;
        b=V+DXpMlEPFQ53ZQ+PA5sgL3HtrHzS7NqZkyPodJqe2S5StxSkqW1KdpSIMS9/fqAv1
         W0JtQfWHBHjmeGnbtBR6M39gz66F/5bOqsF5YwQS+W/cGjnW/x4bGhLDsMNLHEkNBzJr
         ksZ8xSWc89vz26z/pa5U9epuKOGLLDkqmnZTdRe+svbdZ5FTTA6boYTWp1bNSGIg+o+z
         KGB+BKNAvQ27DFN9nwDMHTsLiGfjp2t2/8euETw0dKycHgVt0w2YT7BISlm+PZ1sAmu1
         EIXINBVJsEO21AIhoLrrnJoTFuNX7O3voaQcgJaQBiiTJERuW7os/ToulzI3Nn+BzGE9
         oKaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781248434; x=1781853234;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9k1xalIJOGEGKLf2VEsf1gVe/YurHJb1Wtl9VRU+Ijg=;
        b=CSifo4mfaO9ZCm6zY3FGn4HMFStpFMwoRYCz6qt1K9C0KmRCDHpVde/+fCyB+TVWYo
         U/odeiGIfZ9n6vJplMkK9GPpexvmtUrS+2wZ53TNwMNLXfDR9hafWC5/2tSqqwBUHlrf
         WWsIJx2wxL0RuXtvr6UtgxpKzYDT6s7Hw/jLpl9K+1er/6gjsTa3y/pDHMSA2JXqyb0F
         NgZAbLviaGnVNZVKQDfCoNnzeOeRho0xN3rfUz2McRHcXWfiSnFw8TQL5tocb++Y9jM5
         NLKMlWx3GD4z4/QpAmLbfBiCfN/r9vq5Fu54VeVYbh/VAgIU08uyLoMHbP5Ug8X7ED7T
         RfZw==
X-Gm-Message-State: AOJu0YxU/7tdDVMOwrgK9/cY2AKtVxAU5Twzj1fkYmK0GRIh57VdxiYI
	hVzhk4YBX6/hlSCprme3M8rFm39Dn/vJNPcAG4YriIBTnuAPRk/KXhO8fLwFF2OWF+gDodmUnee
	D9dfS
X-Gm-Gg: Acq92OFfVN8AZfBKjVXqRU4UAMkDiHW1RQe+QpAoA8K8K7HuyK/X9PaFZ/pqIn7Ri3p
	D+osEDF8xscq1LeR+cZkOuo8p3L4h2ZXEpOIiHUgkPHC+2xnVRXdW1PdVzMWwa4pCh8lSPRGUw9
	y8l1KQmYHsUdkfXmMhzWvxOeN9Xs2JcW6GFRW2iouB/9jpNakIDs3+FAggJAPydD6V1dSIMEUq1
	V0J5Uhv7vWrBPBnZZ9O0DxKYPVSOxeXhZD5GcbwkFhdSt0iYqrEIRqyRyFOJepq+6gT69Jr2eeL
	HuFK89mndr85IBu91RDzbF5vV6mhu+3rbeSoa3UFPzMknPAaJBjmx+of9zT29ahoObCzxJ7Lxh4
	LBBRZ8TF/rMOaZgXX7MspqxkeQk+XsFtmdoXUyZxZBcFz+cwJYwZz99EYhCbTLX4GyzyWgDVi6g
	Q+pFF3ZuBGo8XXg95aVlRwIZD30CxjIJDsx2wXa4iXL3fNjzkDL4jyDXcYAaKjozqarqToiY+qo
	b4M5rKNnVs3iA==
X-Received: by 2002:a05:600c:3542:b0:490:b4a8:e031 with SMTP id 5b1f17b1804b1-490ec480e65mr13795625e9.4.1781248433801;
        Fri, 12 Jun 2026 00:13:53 -0700 (PDT)
Received: from localhost (p200300f65f47db040e4e5c1e98e7f0ff.dip0.t-ipconnect.de. [2003:f6:5f47:db04:e4e:5c1e:98e7:f0ff])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-490ea7c8f15sm43701605e9.4.2026.06.12.00.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 00:13:52 -0700 (PDT)
Date: Fri, 12 Jun 2026 09:13:52 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Frank Li <frank.li@nxp.com>
Cc: "keys@linux.kernel.org" <keys@linux.kernel.org>
Subject: Re: [EXT] Re: update Frank Li's keys
Message-ID: <aiuxQ3v8DOytdppY@monoceros>
References: <PA4PR04MB93664A802F0CFE4BE37D6A61881C2@PA4PR04MB9366.eurprd04.prod.outlook.com>
 <aie3VSKk-QG6AGil@monoceros>
 <PA4PR04MB9366B1F3FE538C9E86D05F90881B2@PA4PR04MB9366.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4ljkaevfextmetbl"
Content-Disposition: inline
In-Reply-To: <PA4PR04MB9366B1F3FE538C9E86D05F90881B2@PA4PR04MB9366.eurprd04.prod.outlook.com>


--4ljkaevfextmetbl
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [EXT] Re: update Frank Li's keys
MIME-Version: 1.0

Hey Frank,

On Thu, Jun 11, 2026 at 07:22:30PM +0000, Frank Li wrote:
> > your attachment contains two certficates,
> > 252E39C3640DAF47B32D56A8345DE8450DB7624C by you and
> > 9BD07E0E0C51F8D59677B7541B93437D3B41629B by Krzysztof Kozlowski.
> > Importing it into the kernel pgpkeys repo doesn't bring any changes.
> >=20
> > Am I missing something?
>=20
> Suppose this time should be correct. See updated export.asc=20

Now export.asc only contains your certificate and it brings three new
signatures by Krzysztof Kozlowski, so it's fine now.

Best regards
Uwe

--4ljkaevfextmetbl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmorsa0ACgkQj4D7WH0S
/k6X/Qf+KsCRIc8kYgFy3rERO9RHu+U6ZewsI6Cip+xOl348mlI/uFjZD9Z3xtmB
2Lpwr/xTquYZcBr9J0Stv6mfQCGwYOwcUR1Bk7YVQBDyeYeYTXqVfO7qAc1Xv//A
Acsjlv1xN0w8sAt5RBlehPGAKlHAY3si3hYZf1h5IR5BT9MGxMVNbWPWVidbO/Cm
Bt6gh54zHg1ziPBDwVWK8cszua0coWZq0QkLau/RGU9MtjFlINrbgH6k1PlfuZfv
4amw1epkurKMqpMtauDI/mDSRyi3ifG4lNFmxqjycV1dwuGLIoSN/DsdtsJpRvnZ
2dIU+Xow/mHe3pJGyODFj84tUgJ+1Q==
=X2XK
-----END PGP SIGNATURE-----

--4ljkaevfextmetbl--
