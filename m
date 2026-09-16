Received: from mail-wm2-f13.google.com (mail-wm2-f13.google.com [74.125.225.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A24153C1082
	for <keys@linux.kernel.org>; Wed, 16 Sep 2026 17:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.225.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789581093; cv=none; b=ZF7MY5LrcFS8zW/zaWJC4Tf3abivOrP5GaVXOmLbotBxeRwpw+wrs7oApffH44t8yuUUF4lJrSoQH7veIcWyDzygTbjKYinRtf9qerfBcpvkRM/oXmGyq2KI3AAgbMg76m/mrtXjofcHg7TykPKy6sG0Mv9uRXuBM+nmRxRGS9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789581093; c=relaxed/simple;
	bh=Wj5nqDKkyFIqNN9bf2QoieX72G7hbCfDfvqc7jiTkDo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L3bgPhEzDMwljqcYCiA4lDIwfi2XRhiB2dvM46lvudU8BmF5mvrmI83HIYKlAgnTcBdVAbNoLMvFr6pBiv8WOlpsKN0h6XeKstTCux6DUEMn1TMHKaX/yZF5HFobdSdn9DchMgcHmiBL7qSQiEqV6ChNQUyPOX0ksBOHaMhWbkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=jU8NOctS; arc=none smtp.client-ip=74.125.225.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="jU8NOctS"
Received: by mail-wm2-f13.google.com with SMTP id 5b1f17b1804b1-49e79a408deso27735e9.2
        for <keys@linux.kernel.org>; Wed, 16 Sep 2026 10:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1789581069; x=1790185869; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Wj5nqDKkyFIqNN9bf2QoieX72G7hbCfDfvqc7jiTkDo=;
        b=jU8NOctShkGbNm+Rm9Ga1WPy8sOF0XMf1tUujmCBrdVlbjJLH5dPTO31tOn7Xlgv9I
         LvdjyHG/iCujEAc0NjYtoTy01klvYeWnv53zhozeRhHseS38cRWrhJd+YfnuAYGJRQDM
         eK0lRlYxrncemq9eR8IRhswcN+tqXQrtpxoDGImrA9Q+W7zTYmZuyOVYUY9wJwSoTo1y
         acwEgBS+HCCyuzglZ+ezkrWT42kzMp81pYcQk7UOvS80ggb5HqblDq0LjOv+V8KEzQ5j
         qJONXFQOdTzfcXL5DYbWThvpAZsJo3DMBSUWL29dVq5AdoJJQvaabnUsXCwsXx4pAGCt
         551w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789581069; x=1790185869;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Wj5nqDKkyFIqNN9bf2QoieX72G7hbCfDfvqc7jiTkDo=;
        b=cPUcwPpGrtzFyY0UbwahR1PAI9ZZpYMWFilZ0QAb2R3BrKDGEzx9VJaJK9IMKR78OX
         LSmroJUI7woRTkotNzgmVKODx27DtnUfykPjXmQqViRI3T+lqnFspG3AV1g/J/Brvu27
         3Ft429qjcWsX+mForD3bn6ZD502TC3ZnAjfQ04XcCEjq0lrhO6zXYA2rGm/VnOP57m1z
         puNXS2KifRPuPCEuHJLRpuLn7uQQBVsBt9qfgRmpHqFH77+wBDYtJiALPdiRkZY13SeU
         CkErrQ2i0oBt52jTtopd28F1Otxvn4F0HU0XKT/z4WvuH89MDK7QQAKpbgWBclMuWZAE
         mqqQ==
X-Gm-Message-State: AFuF++mWWVop8dlbAZoPt1NqJfkLSXXSAQfzeqi9jI2n2Sy7wP7Qxw2E
	oIg0sQa9dgxzC89ihIbzgQLVXCHhhKFHCmukAWoU5Xvj9rYkXJtKimFKBxIhjNwcBhg=
X-Gm-Gg: AYBFou13vNsaTIoviMuEgUuQ4OcH0W8QbR/T4pU19EB2F6emC0ZyZdWlOp31/0DAZ5g
	2kuvKnFFUWY14hcp66vPPEBZds1Tpvi0dGNzk4KVsBNRmSDJ/O0ncEWby3NthTdQpGNahYnuz6W
	tHoKyNRuVVWicOfCOowUWGAzpMJ6p1HfUhPbGVnHfmwqQZb/pxWewD1FKF6NI2Ruygee0NA8/xp
	bpKDZnl/8raxkQ9XUs0zYfRvm6X2uzcHQ8m4WXHvPH1FZFIdrgDA1v9gBhYSyMxWjWYbz7daLoB
	UAfVEmBqT60zDhv+OMEqB31Oh7CfPCmrBOawXCLrjI4Ea1rCvwpWEoqOQXv3UgWlfLRipJIa6U2
	KMR+XSJZni2+2+rUR1VJWyl+ggFPup67ymRfH5Bnq+EzFf4RYPMiFqunV1oSno9Aum97WepL/bh
	LAGyfsMjBdwgqM2brMysDqfPgvLPju77KLheA7ilGGA0JUYuHH4cbbL828thC4Y9m40aTIxLcF3
	3YeO7gAosohth0=
X-Received: by 2002:a05:600c:1986:b0:49e:8184:f619 with SMTP id 5b1f17b1804b1-49eb732e3bdmr44782785e9.22.1789581068448;
        Wed, 16 Sep 2026 10:51:08 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-49fbd225898sm8169615e9.9.2026.09.16.10.51.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2026 10:51:07 -0700 (PDT)
Date: Wed, 16 Sep 2026 19:51:06 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: New PGP key signatures for Rafael Wysocki
Message-ID: <aqrVNx2XrMCqJlcE@monoceros>
References: <CAJZ5v0gDj_BJ05d9KJHWrsT23j+ogkPSYCZcohc9Y1CviLssLA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="puxcrgilvwuiancm"
Content-Disposition: inline
In-Reply-To: <CAJZ5v0gDj_BJ05d9KJHWrsT23j+ogkPSYCZcohc9Y1CviLssLA@mail.gmail.com>


--puxcrgilvwuiancm
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: New PGP key signatures for Rafael Wysocki
MIME-Version: 1.0

Hello,

On Wed, Sep 16, 2026 at 01:13:47PM +0200, Rafael J. Wysocki (Intel) wrote:
> Please update the pgpkeys repository with the attached key that has
> acquired 3 new signatures (from Johannes Berg, Mika Westerberg and
> Andy Shevchenko).

Actually it's 9 new signatures, that is 3 new signatures on each of the
3 UIDs.

If you create a UID next time, I suggest to not use the comment parts,
see
https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-harmful.html
for some explanation.

If you're going to LPC/OSSE, you can consider adding new UIDs without
these comments and participate in the PGP keysigning[1] there, to get
some trust on the new UIDs.

Best regards
Uwe

[1] https://lore.kernel.org/all/lpcosse2026-keysigning@baylibre.com/

--puxcrgilvwuiancm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmqq1wcACgkQj4D7WH0S
/k5oDAf/U6D5wxb78101ZfEjvtmos7KcdJ9RHQFM1znqkiljpGsKHKcYJrKMeLdt
WvV0beCnZ4NeHytwpOggztv4mzm2Z553SbuniMFVnIELADkmkMOTwRt/GHKCK+N0
0eGqcclzMxS9pEW2UQ5WLlImDH1RI+wFr/JTw5MK5jBHoSOJgdOwVl7LjZNFXJfQ
3B1mylFJqJLR5nu9LLLK2kFFnHgKm14isPMHgXTpVKKWte/671dH7GeY/uW36E71
OZ1/An8cfUuN1hm9NwDEH5boZ/+MPbSP9PYOmUO80bgMDPKOZhsIpPdZuYmEblVk
qo52aQl3wGUEfGyeXM0+FP8XXjIL6Q==
=RaS8
-----END PGP SIGNATURE-----

--puxcrgilvwuiancm--
