Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F6E3D5244
	for <keys@linux.kernel.org>; Tue,  9 Jun 2026 06:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780987914; cv=none; b=Qbx/hNXk/mCxExj/PZvyUKAWa60odQZhwmR0Zx9Z/JKOger4ykR2eO6aFtQxsikPc05D+OWIe35TJ4FMrEcr3xP7EhTGWnTH9GO3etkpwjUNwho9tS9pppqwEaLl6QarKvWSYbb+aPKZWqucw4nbKuUAWRH4sgM4KpgXBuEAaHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780987914; c=relaxed/simple;
	bh=CyITkDJC6IBNPXewnVC8rkdlmZkfXjIKQOmOzpAhjtQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YUQGWM6xhCHsLBdRyGY9yd4XDDacQ+k4EVxD74K4C+liTGexy4BN1d8e7ACCWLYoezAmerbFlGSWS0B2cjkUJZBJUytRDs0rU+tH7hEzR6aY7vYdtgB8Z3cKd7GMYUYhP8fthKrGoJtvy7alSyK1DdUQPLKMDfDri/bpPIBMzH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=kwce49LQ; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="kwce49LQ"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-490b613a17bso50335845e9.3
        for <keys@linux.kernel.org>; Mon, 08 Jun 2026 23:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1780987909; x=1781592709; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CyITkDJC6IBNPXewnVC8rkdlmZkfXjIKQOmOzpAhjtQ=;
        b=kwce49LQzSxm9B35Ap04DewprGu9F0khRJCLaP/FozdNjYeybd7YIVKdyiYEnm7pce
         m+9bint4pc9yMccG+SH5Kc+0vH+VuYVklUvGj56VXfRY6autq5ubXcJt6wQcuS7KTqaH
         bn6jlwZ0/bhRqqOW7m1etFBANpGBY2myZselT+iWFHxSkblsflz11KTBV/gjmrWn5JPm
         4VyUarjz3cCPqXLkOr6wb4myN2k1rePtPXihiTPjPU0M02pCqIYjW8aGlWQutxYiLe2u
         wM4LN4svmGFdOK66v+2tl3J0lCaZNE/fVjQfmj8qHWkELtoy5vQqZbAjElHLCPlSBZM6
         oUjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780987909; x=1781592709;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CyITkDJC6IBNPXewnVC8rkdlmZkfXjIKQOmOzpAhjtQ=;
        b=Vs/UFieCT9s3BMrquw/x2IeLazagJ0aloG7KXHVRA7wuJU9oQbo5HZBMv506WqWw6T
         nLTO9I4nTKBvI21lSQJhf5uyDlI7EQw2P13Px0u4zxK0mpGWvaVdaA9ZfWy5l9Ggvz/v
         CUB4QBWG79EEtHsQo6eod7YuNFAbhbR4avnQ3u3SLHfYaxHHcckP++WUb0PnxvIltS+M
         CBj+lNMZi2XnnhZ0ifFEgsNJCrgRcQ16ObByDcF/R53QQGbIsUhUJq6/sirKuA6fTMmq
         M6jdtpZvhFzGmi5nRxxHMsWcSKpPTE1UJJcP6ra/PYsT4uLNhKEWn4gvBMSizGO/TtIA
         HNGQ==
X-Gm-Message-State: AOJu0YxdWxtyKV8ryoXnEzXIuqfaA16GsqxvMnY8ZAOPNfsblCCEcrXD
	6KX+ExJSXvmLDj8xGoQnrWeFm71WgIIQoQf4i9HLotWD8wy3IaHDMYYaAYtNn+Yd5/A=
X-Gm-Gg: Acq92OH0P0xfipDlu3a+ypXAq5AqYmBE+EjUktb2DWi0s4RkkSMbdeMe0kvJqJMiHWk
	NocuXZ5y/+NL8M0kSf9aidUZ6b4OcnOnxmihVhSo2Q0SD1P8GJcAYkNZxPU4pA/wvSXx9qm2jMK
	mz+nJPaKNMlgPqbW7DR+O5LgznSgCdcNS2Yrr7dYD5bW6LOROl7BJy5Uh2ymIrjc0w1vhRMancb
	gAcuv4ywk1hdrWdNMBzjxO2M/zOC1/9c0sUdBm6T1TydLhxyLd2IaKmAYaedvKuQaSCD7BgEC56
	Olb3i1vHVMRqJ/5jwTwTj8515s01UK5b1DKy8YRCM7tH9fjx1ZripR6l+gjIfpH+l+mmNBLsFHE
	dPw8QfozL6kW3zJiPWwfbrFzpyGychUsparoprrbr8wfAxSCAjBsaC9cO7QQdiro2m43W18rwrU
	D0kOmoCulPv6R15qJaWNMOGsxFpOkS0YUuPkPruWk=
X-Received: by 2002:a05:600c:1d0a:b0:490:9d1b:f088 with SMTP id 5b1f17b1804b1-490d71ecc2dmr14592965e9.2.1780987908824;
        Mon, 08 Jun 2026 23:51:48 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:559d:eec2:887f:c200])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-4601f360bd6sm63606735f8f.36.2026.06.08.23.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 23:51:48 -0700 (PDT)
Date: Tue, 9 Jun 2026 08:51:47 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Frank Li <frank.li@nxp.com>
Cc: "keys@linux.kernel.org" <keys@linux.kernel.org>
Subject: Re: update Frank Li's keys
Message-ID: <aie3VSKk-QG6AGil@monoceros>
References: <PA4PR04MB93664A802F0CFE4BE37D6A61881C2@PA4PR04MB9366.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6gu5dp2mqd23j2zo"
Content-Disposition: inline
In-Reply-To: <PA4PR04MB93664A802F0CFE4BE37D6A61881C2@PA4PR04MB9366.eurprd04.prod.outlook.com>


--6gu5dp2mqd23j2zo
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: update Frank Li's keys
MIME-Version: 1.0

Hello Frank,

your attachment contains two certficates,
252E39C3640DAF47B32D56A8345DE8450DB7624C by you and
9BD07E0E0C51F8D59677B7541B93437D3B41629B by Krzysztof Kozlowski.
Importing it into the kernel pgpkeys repo doesn't bring any changes.

Am I missing something?

Best regards
Uwe

--6gu5dp2mqd23j2zo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmonuAAACgkQj4D7WH0S
/k6PXAf/fCqZCWozYTmE/A3LzF0f9yyv7fha/vHNjlsSbzo2cXCnqgIaPSw+y5gY
lIOAlVD84OKsC0NvcXcKOW9DCmG7uNmdUvqRvx/ngV0zTDgK5LFhisiEXLOhyOv1
4HWfjEU4vHw5sRw532kslbJ3PLR4EMCpOagMaJD6icSzd+QTIQXtYz5CVhBXcVaR
4scyn0QaLVbkU3oQYneWvC2bqDeM5246wq3t3DCEkYxeXgpF1Eon5jk52tiX7Hx9
/MIe3GXG4dgUrgor6aEazOrJwOpBF+zZlpEJD8pfGPyKgkUeMRTUGoGrHSxfRGoi
tOtMafdOMCtW+oE928jbjNziREq49g==
=D1ii
-----END PGP SIGNATURE-----

--6gu5dp2mqd23j2zo--
