Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F864223DFF
	for <keys@linux.kernel.org>; Wed,  5 Aug 2026 20:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785961207; cv=none; b=G6VMeHx5sndN7NE6Iwn/iZWvQVqFbGxqfp06jFwXPNHQYr4la4t9INZJRGHARP/fuSYwS+fHm734gsUx6mA7sMvh64KFNDiGXBuxKo7+XGrNRhxVHgrtpUp+lNkISLOwVcD8H3qSCd1xJZUQw9gWjrZ8WHMX5kbxaKMsMPks6Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785961207; c=relaxed/simple;
	bh=Tw2gwPP7JMGDViFJTAz5HMSqSihGqSipfAqxJWzI9Lw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zd879UeB6g1FwsGmPrArsc38UHwNrS9hnucAqr62KXrddnRs9z9F3BTv+0tmu/pwkRVXIdPmKlKhZ5YeYqv3ThpvSldvLpf55yFi2stDZzNJ7SKWLVfxRX/tF40bN/0CBzpyZyeefQ0JVpaTCx+alvcx72T82k4T/yClA6CtqEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=mrxkqa4t; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="mrxkqa4t"
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-47f96c5b722so859923f8f.0
        for <keys@linux.kernel.org>; Wed, 05 Aug 2026 13:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1785961203; x=1786566003; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Tw2gwPP7JMGDViFJTAz5HMSqSihGqSipfAqxJWzI9Lw=;
        b=mrxkqa4tLc7E416KFdlHlkUABdvtITXmg0cZ5ngUJNrZVk7gjxYk+ZrcAsOSpxra5b
         AuJfkVsbm4u1jbKK120Rl3c6Ow5HMNwG5f5HWVRLEFRqGRHf38UpL2tV7MNEqwGPiPbM
         vqQ8PX5lUKxiF8vP78cb6Lmqwr5Tm1cs6n7YRNGyHL2y+FM34Y57MU+9cw2K8uQCI4rm
         W3C2bsDT2XfqC9mecLgJVihrsGpuu8u2Fxsl8R2I5bqd/j3n9L+3kA88pJ5O0rwikZgk
         Okl5VKkZ/4X+jfWvH76wJWDaVD5gyBG8coqWvDM0UGlsQaDgfPol2NVS7q8pwTATdiul
         VU6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785961203; x=1786566003;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Tw2gwPP7JMGDViFJTAz5HMSqSihGqSipfAqxJWzI9Lw=;
        b=iw8RCriXqqnRKPgQD63bpgaBz06yIMc4r49Du4cZNf+xFzNFnFUP0KcXeqEOMJQybF
         SxoTC80FPHEQRAj4jWxSreE8Xd8/GnoPJl/jNV2pzAdJadpuYVPPM4Wh3J5fVuHQylP1
         kJ6npuvN4xhzF3RfChY7KUbPhgm5GGoB49kCez5wFLm8iStLrOJNt5wz3fF7QZuGAwMB
         HIUw3L2m8sU/i+ZmeN8L8luYaUF/MCLHrf/b6R6059at5FYiQ2S0sKTNLWMmDrP4z2fj
         f0se9sLtvtZeyK7rbY/Yu1cMdTuuydA923mvR8Ww4t5RzN21Giu1zv1Gp5pxxIKgGTSp
         Oicw==
X-Gm-Message-State: AOJu0Yz9lNlYQxKKQOdI1vQgwWVyzeBskfeiiQVFpIh+eZFuvpq3QcX/
	IIKIexN0n86DV+JAO1m3dZQq1gTSpVWfG9wTOd/32k0j1D9HOPSu+282fI6E/App13w=
X-Gm-Gg: AR+sD13yIaHlLWsC7qNvQ1Bds1xOQBi3MePr6Olh1ACIAvx5MnSGJWg6GYSrAKRA7mF
	BIJZm3uEyLiUD2/Ybj4gkMjRCql4/84sl2ToM+8eSagP56FWOv+qXfA1Ijn6/gp/g48WIi8w3Rw
	cdzH785yRoT3gAY87135Fo4n0edleW3PR7bRDKAXc1k4O34RVk0qo6HaWH6qlUoAoliic3B2hSw
	+JyWqhTTKW02XLhQ8rS1abUfOfBgwMfN5/V9QIAsYn+rm0ANPqOXLL3cHlXNdcgt/i4j4LB3hoz
	R2M7iMyItLJLS+JhTz53OgkkQkiHQba7dAqbcIKZU0DQkMjK9CiWSSjIuDrXsMYs6dS5nO7fhF2
	1I5YH9YOpiu8fN9tBZqv3Xipiych9anONEkzP/QlsSQ4yrWuaN3Jc7zK3CP+Q2XOjkxrujjvrUT
	ieZwZzjIBWQJ5oa3WoQHt4LsCFmOty8NdHiiCulpoGONONE1jIiEE9n7kv7yX2fnJezwolCSp5R
	Ft9
X-Received: by 2002:a05:600c:1c25:b0:499:4e47:eaf2 with SMTP id 5b1f17b1804b1-4994e79dbf0mr134208975e9.6.1785961203567;
        Wed, 05 Aug 2026 13:20:03 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4995427a404sm4349125e9.9.2026.08.05.13.20.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 13:20:02 -0700 (PDT)
Date: Wed, 5 Aug 2026 22:20:01 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Paul Walmsley <pjw@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: pjw@kernel.org
Message-ID: <anOamI5Kef1mB4Eh@monoceros>
References: <872e7256-76f6-2f05-9119-d62e76863ef2@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5e5h4qabifvg4mal"
Content-Disposition: inline
In-Reply-To: <872e7256-76f6-2f05-9119-d62e76863ef2@kernel.org>


--5e5h4qabifvg4mal
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: pjw@kernel.org
MIME-Version: 1.0

Hello,

On Wed, Aug 05, 2026 at 08:06:16AM -0600, Paul Walmsley wrote:
>=20
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mQINBE6kKGkBEAC0K2MI4FZc+62hG7m3dDob38n3uxoAtz64PIvONq6af33cYFUM
> HCRqJj437kLF1jE0kVRdFEZzWLrU2kerXA0syiN4o3eq9DYwZ4SMN8U3oS6l9ihw
> [...]
> R/pXlD4c0iplYVqdRIyW6BlS5mW+M0rOBgKfYFjbtAIbQ3GPAByDVuMIs+NcDXig
> hEYhRipDqu6B9iBVKWayKiYZ
> =3D7/CH
> -----END PGP PUBLIC KEY BLOCK-----

I imported that key and it didn't introduce any changes. Is that
expected?

Best regards
Uwe

--5e5h4qabifvg4mal
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpzmu4ACgkQj4D7WH0S
/k6Pdgf+IfxkTvbGK2Oy+W5otlCQsMNrZf3UdLC/m4Vjmn44TUt2nkNZnQiuSWue
Jzb/LmLIITVLH/J7rbzGYEltbkgDK7n9/YPB4guXzcxAr6uvIaaaSaRNKF2D3K6N
/F9ljDuAEs6KiRQTQOzwnCt3seVonA0OdLktqtKKyeq4xtxeP6RWxcDWCXQxjjz7
6+53Mus3q029kxJ0VkQCfOUmDGnyl5S1vZJuA7HvyzxHsp7Rt4vvUUiKqzqdIuvP
U1FPel+6iIvpTLDt4O5T9LTjWGVtSHzxBwo5CR20RZnMZzJqa9nmweAV5hBcXA/2
/W0DwUzf/NwXklgRkBSk8pUROeNIWA==
=eYhQ
-----END PGP SIGNATURE-----

--5e5h4qabifvg4mal--
