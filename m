Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846A72D47FB
	for <keys@linux.kernel.org>; Thu, 11 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757578193; cv=none; b=VwZDqFzCJihbsoqb9xduHDfrONkNpQQhqw1DRW7Kk3X0HuQjpVxIxrJ9dl6ACTFdAa7llJi6PA7MxLc8MstdzDm9aCv36Ch6dimReBO5fW7ujsi4Yz9LsH6Iyuzv0Aij3O/R7QhJVI7jWsB2etgTJCArAL/uo/PCgXQpIKzDdnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757578193; c=relaxed/simple;
	bh=SHe/bB/dmw9BoIncib5wsHv7C6/E4+Vbt5Uhx649O0w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WeANB4f2s10e0AOMuMeZA9awec575ITg4FCDGEIFhZXu+/x6uuXtLOLk9aS4HwvExB8fv2LAY/CzwQPrT/WLmvE/eOfRup0jGh8gVioiAp0ezGFFXROwSW/tyOLqyhUcYburfSO5J+gRrhEqIktx+dCE3vTaqCE2CLjmCg6trN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=r20xoH4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="r20xoH4h"
Received: by smtp.kernel.org (Postfix)
	id 22B2FC4CEF7; Thu, 11 Sep 2025 08:09:53 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id A6829C4CEF5
	for <keys@kernel.org>; Thu, 11 Sep 2025 08:09:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.kernel.org A6829C4CEF5
Authentication-Results: smtp.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45dec1ae562so3791145e9.1
        for <keys@kernel.org>; Thu, 11 Sep 2025 01:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757578189; x=1758182989; darn=kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GTYnmrx3EHsam4T6Y0vKL2APQ3WObpcfuGtLArA32UE=;
        b=r20xoH4hMMcos7WHffjXUEbQ3vqw9Y3XiPQCHLOhGrDagdiDLK1o7yHJg6M7sZqfO3
         mGSQ351bNPDpWmv3kufilCOIgj2gUSw3eIpMprycjyT5OLBUPjx2PxmNs9Xl/SixElv+
         b0ZrRXtBQCOhZ4dRSsIEko9o5pZAxRvfFCWOJYm7JV9M+UxzZtPpZ9H1s/fAgNdooZ2R
         wDXJLljkpERqs2QQlHuzioe2AWhOz2uCDV75MVl/SInAwm4F9GO70ZAy8zE1qR0Rfvnt
         k2ljrSSNQ/caf81IlhfAZ0H4rTaI5U/JIxAiYHHt+zA41KMwY/YFiK/TS2B6BZS/g+d/
         mu2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757578189; x=1758182989;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GTYnmrx3EHsam4T6Y0vKL2APQ3WObpcfuGtLArA32UE=;
        b=nqMVsb96snV1AlUYbjriUgfvMe6+aLjJFT8IWqxbuHu+X2QHhyTLjY73pgCLoa5s4N
         xEXAZhldzqwN2MbM+r+9Rzi4lYSkk3tyZ2VlZkSi6gTjuEzz+DqmxzRcXqNzjYMQRLsu
         z5uHEWHlFE/gPgU54QAP0SLx5PMtsjllFLt7EKd5vs9wGO7pZAiZslqSiXyQEq3cuU/U
         kjvGDlltPbl9BddjfPF8RXypGwL35h6lzqkMcbLYrPiSc6kS9LlAOO0aka62jUrcsdWz
         F5nD5FgwRdJcvzZpwh3yJJUZ7jMiz6Uy1TJ8Cex4kI/ZN4yc6r96XnxrCUvxikeX7p1A
         TJiw==
X-Forwarded-Encrypted: i=1; AJvYcCU9jnKXAfV/7D6nm3nW0GQ80+ffXoaNT8bw/JZtHvkbzsjcpK5HMAfUz70XkN0UKhH/IYgF@kernel.org
X-Gm-Message-State: AOJu0Yx3UtZhft9J1eOptUoexsJZieDmGgVlxj7Wm+0na7mBTaAoysC/
	1Ec93YY9QA0ffpRZKxlI7P84+1mni2ULI3uJ06tmL8gaHEkcJYYphDaOQtqx66XkpXc=
X-Gm-Gg: ASbGncsIedV7z2zuU+N9P+8qxAIhI5t4bIfoHXoPq2W/oofBFiAhE3PJLQfEmEKlO4V
	7JuyJdU17C4EQ5VABZO1F/KB0nAVs9WSS1GCqUKok6KOov6RTESpbuHzRlvNNXzRlNNUH920PhF
	mDM8UQUdBkWnTF2ZhI5Vf9XKAaf9Mzrn+3QE/STK7rWZemnW9C+5ZHuofLlFYn6hZ3ksnCpca1k
	Njr2hd/tsfLJoupT2bi+n2SZe0SOC2ao/DHPDf8i5pZQDx1UK1UkXuRaehWZ4oXhiGwsvY83u7+
	6Y82aVHUcCTouossdDduBAsXK2qjfqQTqyOYB99CrCJrdYpCYaytFfV3S7tKSd29E7uAlIQs+t8
	es+a0fjo4JtnUy6faBiCfVvo+zUsHO1O4LWugwyE4xr7nXUpgckRhKbVDaOj0IK6WYL1fR7cBRS
	I=
X-Google-Smtp-Source: AGHT+IHCu7C0DE3wpeqP8c+5Hp53VSdBKDv0XaJq7LPRzAHK1p5sdUJevhKQhjA6PMwIiq1W/nZCNA==
X-Received: by 2002:a5d:64e6:0:b0:3cb:a937:a35f with SMTP id ffacd0b85a97d-3e641969f7dmr16400898f8f.23.1757578188850;
        Thu, 11 Sep 2025 01:09:48 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3e7607e2fd7sm1465801f8f.63.2025.09.11.01.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 01:09:48 -0700 (PDT)
Date: Thu, 11 Sep 2025 10:09:46 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: wens@csie.org, keys@kernel.org
Subject: Re: Your key expiry
Message-ID: <woqfozcafe7el476swmyybfgz4sik4mvqyoemxbeyjk3tuuvs4@6p2aipjth5pv>
References: <20250910-sceptical-ibis-of-symmetry-4cf8dc@lemur>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aznc7u6tb47mibgt"
Content-Disposition: inline
In-Reply-To: <20250910-sceptical-ibis-of-symmetry-4cf8dc@lemur>


--aznc7u6tb47mibgt
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Your key expiry
MIME-Version: 1.0

Hello Konstantin,

On Wed, Sep 10, 2025 at 05:12:53PM -0400, Konstantin Ryabitsev wrote:
> Your key expired on September 5 -- do you have an updated version you can
> submit? You're in a lot of trust paths, so it makes a lot of impact on th=
e web
> of trust.

Chen-Yu Tsai did update their key in the meantime.

If you care about the web of trust, you can also update (at least)

	26BCFA05FCF60E4C
	4A55C497F744F705
	7091A8D9AD5FF600
	87C1A206239D04FC
	E1CA73A3C9594E24

=66rom keyserver.ubuntu.com (using

	korg-update-pgpkeys --refresh --keyserver hkps://keyserver.ubuntu.com/ --k=
eyserver-option no-self-sigs-only 26BCFA05FCF60E4C 4A55C497F744F705 7091A8D=
9AD5FF600 87C1A206239D04FC E1CA73A3C9594E24

) to reconnect 6 keys back into the set of keys that are reachable in 4
steps from Linus' key.

Best regards
Uwe

--aznc7u6tb47mibgt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmjCg8cACgkQj4D7WH0S
/k40ZQf/QkKxc1VaCeRZYwpAiE69XW+Gt1ZaUFJyXKJ0TqsTh5HCTAZzU0Ylr4SG
BGgdgcKMyK+VD2XnrntJkJUNCnOeaic2pn/Lug6bb5rV7KUFAvkc/AD7eJ5G6all
SbOTUlBYhvpc7mmSNXvPKEd+3nuhu8Zc/5fMaTllGQIGxOAo33HXdGHyVjRfI+R3
2R32njkCsP8ebT/0ehnZ3rWGQam9ZmtlWPtddE+xiaPeqEVw602RFpSvQsLTtDNo
JAJklY7PzysoGBin4mAgKDQmwz+md5AxmgyVRcDRvzqP6+nLvtYJ1QRYtlCLQRSZ
6j2xWW7wCkQgGnrRwrmutJ/I24oMVg==
=tNxS
-----END PGP SIGNATURE-----

--aznc7u6tb47mibgt--
