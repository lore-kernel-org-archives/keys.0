Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733BA3C1994
	for <keys@linux.kernel.org>; Wed, 22 Apr 2026 09:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776849582; cv=none; b=iaSJPEUqD1WM/Bp7oE6A24R4IPJuZN0t5uU3EWag4tN5U7fraSELdOCFfk+tc8x/TAc34+QDQ/hjoqSXafKfnxTIu6R4zrdA81Iw/n1ADwjvf3tKbn4zMoI+Ev4LZTGknPt3wBjG+QNhKZ1F11jPNvtBMwo4oRokql2Dj6WZyj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776849582; c=relaxed/simple;
	bh=QWHVLdzP28jSll3fg3UePG4gnayMeik1vPpahoDaIeE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DBMrzeVnzVlCbz2jKeOrD6+OGNnCWZ57V1k2MuOQmh9CNdzEQKxVT35Q15BG7Tm8uY3M2BzDDiWB14WO+7JhZ3hcNXrHNF7Fn+ywZR1Z0ie3j3ZpY20PHPvIeHzmHoSDU01uswrk9MKnTiKIH5QBYVzxHlB2Aqru4+NY08o3ACw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b=TLD991sK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b="TLD991sK"
Received: by smtp.kernel.org (Postfix)
	id 2C11DC19425; Wed, 22 Apr 2026 09:19:42 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 4C554C2BCB7
	for <keys@kernel.org>; Wed, 22 Apr 2026 09:19:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.kernel.org 4C554C2BCB7
Authentication-Results: smtp.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-488d2079582so60791825e9.2
        for <keys@kernel.org>; Wed, 22 Apr 2026 02:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1776849577; x=1777454377; darn=kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QWHVLdzP28jSll3fg3UePG4gnayMeik1vPpahoDaIeE=;
        b=TLD991sKsi4HMh45LvP2uTYy2mejj1QJqE6G6ZLd6K6kX7nH3uMYGKTBKBbOGE51S0
         q8BiAlytIYK33r7Otz2CCj6aj6hoT/TCGe86Hnp6ygxwhjKCDnMUAaE28FL63O5WryKJ
         6K/NmDRHg9Dvn2S2ThSDF5zKxNuJDs0eObqmzPzTCvUdKw8gr/MI3NgOD7Ig6q4tGSXr
         qk4wA3H1blazQXfvKHzd/AoFo+ETM7zNDljASGDu2B3nurnrrYeDxm/uxPgr75ZBAMX0
         GEeLCH04RJ+0Tcnrx0aPCF1V3l3F4EkAHg5h9nNP3FsWvrNF3eWpUSrJK68GgxpUb9Fu
         1nCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776849577; x=1777454377;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QWHVLdzP28jSll3fg3UePG4gnayMeik1vPpahoDaIeE=;
        b=hV+ZRms158yP+TKbVxi0dxk4pSqZUtA3cDchHx2VGlvck7CCmVjw6THM1fzpSTCJ9B
         0+MSlDOPGgJeavejH71VOFH16XQZEuM5uMV3lei0OfMhc5u3JPIVCibH/cz1FoFbnJFr
         XRgFD606ek1FDInzeRj0q4zFo6Ut8AeVMXlgVedNxV+K8OlIrjzjedEO+5ambz87ztt0
         O3YL7kHea58zCYfw2f1h+PxIgpQI2TXiBiFo8jXmOtLiJW8jOwGLWRSH2FMiQinUacFp
         Qdpu+yXP+WsqU+KexOd32vYjlOK38YFdA747WJxPTqzGXWz2d7qpo+tTtKgD6raAEjE+
         yJPw==
X-Forwarded-Encrypted: i=1; AFNElJ9ddlx8hmt+B72dT4LPPTIE78PCJD8SuR7eW5IykVk/IdIKNKhP/JiYExAL0Q4FLZe6PaFx@kernel.org
X-Gm-Message-State: AOJu0YzbkDIz+e9LHTP0OtGyxLF6Nxb2J7F4xyqFibjJ5Ea/avf+aG9O
	5WBqL4KRIKoxsKc/If+ccokZ+xS/iS33+MKuero9IcIHgzt1l3PDLzfQd/yPPBQ0EGY=
X-Gm-Gg: AeBDieu9umAh6AW90QVoedY4wu8RNyiThbLDq7atV1bu7ZkV0cakMu95PkOYrPlJsO8
	edhn1tUATujEjoocrkrWfqhS7+sHtB/IUMstil2IX8WGw9Sxwe1Of6uSTlOAStlUOc2OncdYOud
	zzMDn6Vzy0vXY5EFv9IYyhbTeHX6M17jl5ptprDxh36UrdQLogvinyI/cxsibXOjHVh59dgX06k
	xE45yqefVijDymHOWhnxiGT+6YQhh1akC7n5MZr0czBJoCOPNSsVSQOQm7F9Usppuq4LMSo8If7
	3VnPylAMweVrkOMpCFbgHk+VhxGq+tVegutjdsHWTzNImyxL5uzyPRjYizD8Zc3/YKotBkuiBY7
	KByBgMlEXZzAM9DBkBeYkbXJDn/3VJpdt0D/7hJWPR9eLAg9UJCLPVe2k7OV1lM5dueaZsw0873
	8VwfYTDWyVXnhz5v31C/NvszsTnmMaOZGkSVl06Dw1onTn3N3uKtwwKSkaKjamV2k6v38T+FFAJ
	hDaqouvsah/eel66Mv4jbImEw==
X-Received: by 2002:a05:600c:3515:b0:488:8b99:54a1 with SMTP id 5b1f17b1804b1-488fb78e7c5mr295928565e9.28.1776849577501;
        Wed, 22 Apr 2026 02:19:37 -0700 (PDT)
Received: from localhost (p200300f65f114e08a760282010012dc7.dip0.t-ipconnect.de. [2003:f6:5f11:4e08:a760:2820:1001:2dc7])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-488fb7a06f3sm157532535e9.22.2026.04.22.02.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 02:19:37 -0700 (PDT)
Date: Wed, 22 Apr 2026 11:19:36 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: Lorenzo Stoakes <ljs@kernel.org>, keys@kernel.org
Subject: Re: Replacement GPG key for Lorenzo Stoakes
Message-ID: <aeiMOm5bxDVPD70y@monoceros>
References: <aec18mJotTlfq155@lucifer>
 <20260421-capable-resilient-eel-37bec7@meerkat>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nnl6igtdsulo2eqa"
Content-Disposition: inline
In-Reply-To: <20260421-capable-resilient-eel-37bec7@meerkat>


--nnl6igtdsulo2eqa
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Replacement GPG key for Lorenzo Stoakes
MIME-Version: 1.0

Hello Konstantin,

On Tue, Apr 21, 2026 at 05:43:11PM -0400, Konstantin Ryabitsev wrote:
> On Tue, Apr 21, 2026 at 09:40:15AM +0100, Lorenzo Stoakes wrote:
> > TL;DR here is that I managed to lose my private key, and need to replace
> > it.
> >=20
> > So my old key, 5BEF5562908102FB56727B7CC52D7AFE85F25509, is entirely
> > lost. I have a revocation certificate for that which I will be issuing
> > shortly.
> >=20
> > The new key is E7F417BF5214569E89D04F46CF9DCD8A81E27F14.
> >=20
> > Due to losing the ability to sign from the original, I cannot cross-sig=
n it
> > with the old.
> >=20
> > So to establish the required trust, I had the new key signed by people =
with
> > the requisite level of trust. I attach the key here.
> >=20
> > Could you please remove the old and replace it with the new?
>=20
> Done now. Thanks!

I see you removed the old key from Lorenzo. I wonder if it would make
sense to add the revoked key instead of deleting it to spread the
information that it shouldn't be used any more.

wotmate's export-keyring.py in it's current version however cannot do
that, because (I think) the revoked cert isn't considered at all and
thus C52D7AFE85F25509.asc doesn't get updated.

Best regards
Uwe

--nnl6igtdsulo2eqa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmnokqUACgkQj4D7WH0S
/k54Owf/eIMxT9gV+a4TbXqaxXgp0oRtQMKA0Zs6M5e/aDZd80afDExt2PBfCyE8
Crnh72SBPLI+QcXXImBEdH7RAqsMcueqDdHPqlLry6x0VEZi3Up/B9EnwGiodGoN
eKDpLCro6/5FRaYA312Mu4nmGj4A6Eg5IQ4fzU4lCkQJBaLB05x/icX0f4Scddlh
1nSAKHaOZIybZ2e5Ta7Ox0tIPjIN6Y9aAqrGjopclEDJ6KDC3CTgWgljE4FwaqOK
lFaLSwH6KvfI4rxs7bQBHv3fezM5A5X98mKw1Ckb2YLhnBjrKmcH+NUClOUWF1Bz
KGdJeS/J5sdsUISoKjFPZACbUTscwA==
=M3kv
-----END PGP SIGNATURE-----

--nnl6igtdsulo2eqa--
