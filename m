Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFD5226863
	for <keys@linux.kernel.org>; Wed,  4 Mar 2026 07:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772608150; cv=none; b=N5uHGanqdG9hM6yQ7BvXvW58ns+83oH98g0/uS7zBaSnIq5Ln5/Amu0bqySktUBgvnWdaLuGgvuWpzpe8Js+zxiThw7S+HaUoT6JXUxdVoosn2MXsqzQmzN8cjDaVjbJ9z3UOsjY0J5FxIr5aCbWi3Qx2eLieGrVk74A66eocCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772608150; c=relaxed/simple;
	bh=9D5Yld3YhHEq0CsN+EAgTwgqsY5qte+dor/67Zyq4+4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fldHnN/C7S+9ixaYzdDcqAfBKfHxY9ft06mkPPw+cbsVGdznn2ccMp93yvAbmmV628G855XCKWoyaeMsxjkGm4l1TaOpo0LNHCJu43qt58H1tGHr2isNTO7kHFWTojVDHD/Z0VJN2o5qTfqFr9S/83c1dc7oaFqLT9g8Kd2e5FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=18VbAbtE; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="18VbAbtE"
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-4837f27cf2dso58557305e9.2
        for <keys@linux.kernel.org>; Tue, 03 Mar 2026 23:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772608146; x=1773212946; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9D5Yld3YhHEq0CsN+EAgTwgqsY5qte+dor/67Zyq4+4=;
        b=18VbAbtE0k37DXIdE0vg8hI+6Q2F7usZ591kjg62cTkCmyilCrdL2JzH47fJFUNzih
         1MiYWcowurgk1XNihJdafIarPTKUY25Z0eosr9bY6FnEWoWcKtK96wTR0XOJaRXu0GQL
         J53FOkzdYwLYBlFABrUP0Q28U2k5AuUta3p/1Ms+iH6PRoDgJ0/3wBnCisB9Hc4d1ZCv
         Dx93iTKVuM2N7AZkYcgIonOLgy2WdhfoAzIOBl1BCQ2bRVs2FDksTh4nDQFlF/RU+4bD
         8vzqewQPtX12i8RHUvKb+sPQMXPhQIj1x4MCGer6zMMA2WKByBGvEne/+8n9K8dLQCmR
         uR7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772608146; x=1773212946;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9D5Yld3YhHEq0CsN+EAgTwgqsY5qte+dor/67Zyq4+4=;
        b=C/9f6wvOVZlUKV3wF4uPadRCqPceo3YiLXRsx93j4DsHjwOhq1YcMzReJ+fkkVLxxS
         u7kLjWKZIyNufvPG5POzKMBvvW2CSOpJ6GcBAQNjZQJr9jS1I98otfhHxh1sc1kMexRt
         oIzi9tLK0Frrz6ADDJNdILg6LoKvf8UWuWdNF3nGh36VH1PkImqFChi2jZPikf2Syjjy
         TYz1Zgpbxch/pzdy8TCqiXTcrPwwXNPRdWnAHq8KHzIvl4CuFSY/TDx6LA4DGrr562oZ
         snJupxrioskXCl0JoMVmIqg1kKhWbhSURHgPz0VGTctWAzySI3n47pS+xNc53b+matBo
         30AQ==
X-Gm-Message-State: AOJu0YzcDxIedOs5vsGily+O1PXUF0O59JmXFoqRsCtYPZQpJNhtyeJd
	mzT4HLC5awBbZvsqwH2XHP/8OI5rSHAbe/t9w3gJRJMkOsiF/BRQ022HxHkWoj7iZg5iRCqtGoI
	L3RFJX7kjVg==
X-Gm-Gg: ATEYQzwvdqDzXf4QI0cIr4f7Bio2kng9nAn9sbspy//9169saW3Lv+XWBGXH+EUClnw
	32/wESjpYpKjahkNK5GkRbhGnuwrAYSCoAi9PEO47q7RYSxoP9iu313gb32kS44TtZwKtxboFS/
	GOdty6PtR2+saRbkiiLWWzanoLEApAONK/IdiAR1QXDrsFC2XcshpdJgmtmM4JApajR90FK92+X
	6x/Yt8AJNhuKTZpqEwrlhJ/zi3bbSp8++vfIpQ0TRBlQWWZbyovvuU0ixZN6WdtMnaB/lZlwhZD
	vfdZoOh76gpoXReRszsa82jsvcI92YWoHT5c7CXhZWVRjbYZysZMAYRbFns/VOjhIRBwSobEUVJ
	MK9F3zN8UBz0W96rsHKatsgEcx2c8Buhc+KiMLsUSJ0yqHCxOlLrBRP3L/Kydk99NVxFE+6sbkl
	gd5Njboz90sicPw+ojfsvUah33NUkGYRilclCLooo=
X-Received: by 2002:a05:600c:8b02:b0:477:afc5:fb02 with SMTP id 5b1f17b1804b1-48519888e54mr14538575e9.21.1772608146074;
        Tue, 03 Mar 2026 23:09:06 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-439ae3f31dbsm27566323f8f.1.2026.03.03.23.09.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 23:09:05 -0800 (PST)
Date: Wed, 4 Mar 2026 08:09:04 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Chen Wang <chen.wang@linux.dev>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Chen Wang
Message-ID: <aafZ7GoejurN0Hns@monoceros>
References: <928a4bf0-9482-4564-93e8-a84a0f14ce10@linux.dev>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mfxypa3dnvetuive"
Content-Disposition: inline
In-Reply-To: <928a4bf0-9482-4564-93e8-a84a0f14ce10@linux.dev>


--mfxypa3dnvetuive
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated key for Chen Wang
MIME-Version: 1.0

Hello Chen,

On Wed, Mar 04, 2026 at 08:34:04AM +0800, Chen Wang wrote:
> I am updating my PGP key as per suggestion from Uwe. Please see attachmen=
t.
>=20
> I removed the comment for linux.dev but keep the comment for outlook.com,
> because I've used that email address before for some public relations wor=
k,
> while linux.dev is a new email address that I haven't used yet.

Up to you, my comment was mostly to make it easier for you, now at least
you made an informed choice. An upside of keeping the outlook UID is
also that you keep the signature by Guo Ren that is needed to get your
cert into the kernel keyring.

Best regards
Uwe

--mfxypa3dnvetuive
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmmn2o0ACgkQj4D7WH0S
/k6qowf/eE144moQfTmH5+Xa7NhFD7T+XJuLwKmQvD8NlMOw2RCO+sZRK2p7i6tn
IBtQ8QeftNdDOgHIbW13l1u2gUvuuN+Tv1nXkhUkwta/l2x15+KzuY8R3Hz76CN5
yLSkF2hLwKdbXgEmQxLTlZJg+9dkSDqB45qCK38JPYn3UbEMdlssRr4bphfGS1/f
Rnd9qn2DOsvYp09wWhyW6r73McR8BFys8ibl1PS31+OOBJud+7MZyOrpw+/ddim4
f7j+gv73fUfgfcWCTGzu+DTYn+8pSurmtFJOuYeuEKiixLTfJOchigTvLQsbUQ9d
brfXygqfD22NksBmSJ2nhpyqMgG0Ig==
=98qI
-----END PGP SIGNATURE-----

--mfxypa3dnvetuive--
