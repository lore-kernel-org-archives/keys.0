Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793285100;
	b=CCzUnVm6wwcDedLx+QqQDzCD9gvgyQRE2NxxnBiZ/rde6JOd3OlvsjjyDqqlfHdBRp5N
	 PLQ7h2XzgGuT9VoYeSQY2iQJw50cthcJPEOnGoCDqheh3n/QO7zzTzl/Zx1yJv2b6ryN+
	 QQfIPmdR52nrHnwU1F+91zC8Q9ulYP9q3WocuT/IcGA0F/LRYHU10RKVZo2rBtb9W2224
	 k0NIyrrrCqOTixTQo1p5aRNwrcBgPqsXYWRytxLZuambDoBve2Wpy90aZYBExdC6vZ34a
	 tJM404NffZ4UA/u+7sXKKqmEc6sRU0gAcexkFkkPnDOtjJJoC9LI1LGKz4pTh4ynEQQ==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793285100;
	h=Received:Delivered-To:Received:DMARC-Filter:Received:DKIM-Signature:
	 X-Google-DKIM-Signature:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 Received:Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=3ZDFZ9oBma85qr9pcqrTvzEEOHfufdLQmsSV3IwMiK4=;
	b=fzPuV+EhEcX/eN3ESTjbWVi5NM8BtBzNqW4wbxsdSFyxLIdTLHD6xM/YcADYYYAqcqXi
	 cJj64i+1LQZW8JaLomH8PGpq6xE3CzyUzdKeCSeu1RySCrAPR1cQCt96xGzHMxab6rkKb
	 5wGFa55CmbU7IccnBwfacrhxkkuxp75p2Em7bW/HeL9UtwtP0IEyD6Tvdye3uhkYpu1H9
	 MX7085OYpe0cSwEUGlITR6locWRVlp6PGdV11OTHYOLuMjJ91xUmozHWrhxTOarURP+Bc
	 UGd1vBgBx8AlPurq3jAFN15RnrqltjPdjSpzqywa4aUZYtlHvwTMhHi9Zn1NtcU4KhA==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=ISaQThzX;
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4432B60A261C
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 14:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=ISaQThzX
Received: by smtp.kernel.org (Postfix)
	id 1CD281F031E7; Thu, 29 Oct 2026 14:45:00 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=209.85.128.49
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793285100;
	b=RWgDlBFiSjcIiPJtUad0fbvPFeCDGV7xqraRqnX9xm2d4eRiOodUXuhnzVGDytGhCCgZ
	 +esLtps4qZErf7eZ47I2C6g/qeS0WcVzgi3jovS8zdBwavhFOlpYGOHe8SBXDORde5gfp
	 y19SFP4NWvwK++Rc0HTnupnvEWqOf5KQMu93VLALINaKKrYx2qNA94ZRTLw2k5OUHRpJN
	 O4EAlYuqlxDLYAGs22TkyyRb2ZPnxwOt0NgJYwpoTejFSCJyRgROmfYyiwGUex/Rfa+eP
	 2EC4ycuGlK+qqkMvB2Uxo6vdqCyDkZ8dZl/yKGex9PT0o4IZ+N//Raziz3zTByvDIiA==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793285100;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=3ZDFZ9oBma85qr9pcqrTvzEEOHfufdLQmsSV3IwMiK4=;
	b=OlVkVSv7fwAjsxGiK5bpMAh0nFUTaNj2WyKBCA0g0wAlJcjkbpqR+p1m1DmvdSBN3r2J
	 KOWCdgAfP09NffnCVHmCqQsIDbBr9ef1qSo7LYrVbMh72tEFP+ai5f3QjP8ULGLK3hL0j
	 faOMNa/e+8yawS3td25nyZhq819v96UrjhwyB4TzzkckvRg9rB0QatBZNYEyS0hDcRrzz
	 6fQKHLioHHWBORJuWKnlX9hRdSQ3vdXMDF+dJAUoAjeMmqcT9OgSeynqDtvRj4armR8VA
	 fhXB/mGBb5Tpc2vHulo7glGSBg+Zd+ypz6ltcYq9bSnHVxAkUitElXCTkdfQT0Y/WBg==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=ISaQThzX;
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	arc=none smtp.remote-ip=209.85.128.49
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 31FFD1F031E1
	for <keys@kernel.org>; Thu, 29 Oct 2026 14:44:59 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=ISaQThzX
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org 31FFD1F031E1
Authentication-Results: smtp.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4a35d5d4a20so24559265e9.2
        for <keys@kernel.org>; Thu, 29 Oct 2026 07:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1793285097; x=1793889897; darn=kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=3ZDFZ9oBma85qr9pcqrTvzEEOHfufdLQmsSV3IwMiK4=;
        b=ISaQThzXUod29fZEpGRPzz7Dw7iXNoDAGx7mqptZkpWsIeOAW4Y1LhOE92L21P1kyH
         vJUFhwAQJ6FLBNZCExecLAae3JPsUbVQKwCQ4Oi/GafA3fMRco4/gSe0/JpPT6PQk9VY
         SBNjgy1sLmPCQ+r+FGH0O0qSoLiZW5MR2/cVKTdFvBzcKgavz1tcKYflifZqqJaskZAe
         wnaauI6Cj2oIjXwWjf7ZqHuGgSfhmqPM8XUjSYukIPt/IlklmmKFnc25p1H3H+KnbUPN
         B5+t8MIl3GUMtklBG0Kdx4qIV33oMu2sX+JYX+XXw/OLR72/A4X/PRJVDpFmvBiHrCEz
         qSpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793285097; x=1793889897;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3ZDFZ9oBma85qr9pcqrTvzEEOHfufdLQmsSV3IwMiK4=;
        b=bUBvPGOuLQX5YE+hmVF24zdqtmsIwsfs4s626PPlHLO1EQ7pmlWa65EYyXufLUdrre
         RIIKv01+YpUUG4rvP7dqELYL04pUeQPMGnZQe4NgjOTxkDRDK8oUlWDt5610uTYxpp9G
         1+ZoQydIUZHUGwdUbuz33iuGjhO2ErBjApOaubEAr+T/x4hCTeZl4wKm7i1LBpPacGDR
         wPv6ra7bZsTRPd1Qfvyri9TbPXF40rKG5AWwlpSR0bKo1JCM8dey/49zjc3HRBt2e9Vf
         TushiBQk/MyZNYAD4H4lQjaSApFtXKFC80NTM3HZjS7HaYZjxVA2rmZW7ypU6NfiWuG+
         wjAw==
X-Gm-Message-State: AFq9FYJcrcaqXr4nAf7vwtdbaO7UhZaI/Ay3XhDO++Ilvu97XjBMBukg
	DAov6LGjZLZjzl+1trFYh2ZHLml6pHaRS+oN/2ShiWw7LYxJvybQzFrNqGXlylALKjg=
X-Gm-Gg: AYBFou2WeauNSDdTHvXFoG5d7x9x1ZHUjNx50DVcF0a5oyJ74lfaiwCVqhlwSkBVrnJ
	mz1DLu3UW3e/KDkHwGbBPueOh6SKhSd4AinOurNN3OpdQ7ytbDFgAVS5vPGGEaRO/5Ds3EMeR4V
	q/1C4fEKy8riFg4/OI9YOx8RBqlOcwZ1zbkMA+UBGmw3NOr6wtcQRtwMq9ztjzcVn9fGZTmvewo
	nKq2nfKAcNXQ1t/xX5c7AvqmORR5GodRYRhGQzL2rsv2QAJ3WmpcNIOmYeSS116hzTApcVLQivh
	4y/qdeDb4b9OG/ISS5UxvzXbq9zWS03Dw2hw2miVa+9+78YmLGD2VNgc7oXwyUHynEQy4Va0ACY
	GDXK3sqo+1J+hYcMLZWJ7tK8Dtxv5tmICyjzy2BnrmaEJBcMk6ZM2FzmYxBteVjxAGJ1xH12Fnk
	WIWS41ud56PTKQCzvPW8VSck7A3hhe+IjTInqxt4DwJ14XMY1ZYvI2nVGsKlyD4FlbS6UmHFouY
	FszFUDyyak8xPZVzX9UM5zVfnswFs1Xaya2zL/L3gvmb0B3rxH+tPFQdy3WKnRH/OAl3KgobGuL
	tronQpHgWatdjlOJbdYM6pVs3CNpiUB1PD0=
X-Received: by 2002:a05:600c:630e:b0:4a6:7d6:821f with SMTP id 5b1f17b1804b1-4a9678bff9cmr127447765e9.29.1793285097551;
        Thu, 29 Oct 2026 07:44:57 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4a94e4be4b2sm80702275e9.2.2026.10.29.07.44.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 07:44:56 -0700 (PDT)
Date: Thu, 29 Oct 2026 15:44:55 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Janosch Frank <frankja@linux.ibm.com>
Cc: keys@kernel.org, mricon@kernel.org
Subject: Re: Key Update: Janosch Frank
 C06352F3CBDF73DFAFE3962AE354E6B8E238B9F8 E354E6B8E238B9F8
Message-ID: <auNalpff5F5usT2u@monoceros>
References: <63d173e7-93f3-4a70-9118-4b0bbcb28424@linux.ibm.com>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jpgutuwxtbew3qay"
Content-Disposition: inline
In-Reply-To: <63d173e7-93f3-4a70-9118-4b0bbcb28424@linux.ibm.com>


--jpgutuwxtbew3qay
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Key Update: Janosch Frank
 C06352F3CBDF73DFAFE3962AE354E6B8E238B9F8 E354E6B8E238B9F8
MIME-Version: 1.0

On Thu, Oct 29, 2026 at 01:52:27PM +0100, Janosch Frank wrote:
> Like lots of people on the net I lost the passphrase for my old key
> 6577ED26BC0218E19722E72C170EFFC43C644579 a while ago and moved over to
> C06352F3CBDF73DFAFE3962AE354E6B8E238B9F8 / E354E6B8E238B9F8. I've used th=
at
> key to sign my pull requests since ~2018.
>=20
> E354E6B8E238B9F8 already has certifications from my peer maintainers and
> developers which were added in 2018 / 2019.
>=20
> The key has been uploaded to openpgp as well:
> https://keys.openpgp.org/search?q=3Dfrankja%40linux.ibm.com
>=20
> Please change the stored key for me.
> Thanks!

> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> xsFNBFubpD4BEADX0uhkRhkj2AVn7kI4IuPY3A8xKat0ihuPDXbynUC77mNox7yv
> K3X5QBO6qLqYr+qrG3buymJJRD9xkp4mqgasHdB5WR9MhXWKH08EvtvAMkEJLnqx
> [...]
> 1gsax7HDIZKxVi4WIjxeIqYV+1DXTlgUPdKqR8gMR5g2s3aNu4BI377IGDHb3ipJ
> xDkxG+aYcMVoIOwXCA6CX/VDAg=3D=3D
> =3DR9cN
> -----END PGP PUBLIC KEY BLOCK-----

The key looks fine. It has only a single valid signature by Martin
Schwidefsky. There are a few other signatures, but they are using SHA1
or are by folks not in the keyring and so are not considered.

Best regards
Uwe

--jpgutuwxtbew3qay
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrjW+UACgkQj4D7WH0S
/k6r3gf/R2y2zWeEAuJAYHGXs2RGNaLKRhP9JUw4F+Unu2EQdNt0ZXVnZVzmshjQ
VoDeGVyZUxhfNKCuU+yewMUGzs+VY0wVo9rZ1X9peT/eFb4xY2cUeq8IaHnvml0z
tvX5uvzdQa2m8uf5/ZDuIMsFX3cBAsnIHJd70CWaWEpkbfwCiAjq9/jTUAUSGsCW
J/mnHCIN2a9SJr5F2yR0RWL5gyqLWhe2YERX48VsfClX74KSjOl/nn4geAen2xM7
aKLxalGXlwahYamnYahOLYpMnbiWeh9fxa3/ETgeu2ZUapFT6mm4Lgc2RxX62YM2
WF7m7p54i7jDIXqGPf7Wi8oRDrLuAA==
=eXs0
-----END PGP SIGNATURE-----

--jpgutuwxtbew3qay--
