Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8778E1C1F0C
	for <keys@linux.kernel.org>; Thu, 10 Apr 2025 07:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744271519; cv=none; b=RWPFNxhdpVK6zAxZiSFCkwDlgLQrZs5gvIyEIEsYHvcrRU0iTCqI/w8LoTOE4bnfX7TLpF9mrIOBH4x97kf4YQzJaDr9erHvi9iUWiFKhUShGnzfnC1lsIkREU+jdinen7vDh/U6K5ipcZpYfJ3h0fo5FZ8k//KoHPP8bGZmWBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744271519; c=relaxed/simple;
	bh=BoI+y2CJxVJnNs4LpYe7LN3LZe02cQGqI7OcMenQgsM=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZM3yg3rShXvFdUfRHYotExVZm8j2wfB0FMFsXqkEBs7foyF4vcYfyGkdQq+6t2zZfpjYBxb9dLpoLutNFn3+YaklVpBvEk+12eRPRUc4ko20AeUY9Di6914xGw1buf5YPrYbRPCUWL+7HCAeLGiC8DPBvwEXuSpIKCa7YV72w4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=s5LxSKyJ; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="s5LxSKyJ"
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43d0c18e84eso2279575e9.3
        for <keys@linux.kernel.org>; Thu, 10 Apr 2025 00:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744271515; x=1744876315; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lpl8zAbEIjI+Lb6H7QBXK8cdkJsDACxXk+NyRe5la8o=;
        b=s5LxSKyJJ1Q505zAg0Shuzf1kBm3tqtpQ1B3Hc2uKTkfTEsw8plEvibgejRsTB5AlH
         kLJEx3wEJIZhx8wl3ZtNlqVtAPwY/0+DGcWF0Bk3xxTSGDR7d7IAv2yAoQ+pBwBF91Fw
         lfuQk5Vbe3KPEMnAfcMZI6tWoxgZmd7S9Qxhy+3zI4q1vLKltUNHg7MehGIy91OIxMxO
         X/w5AJ66W3992UWxnV7zamrUeojQLzwd6dOEjI+P7NwOofMSIui/mXHo4nTsJlKBkZ00
         uTbvzRGn/j3SYYGJh5BxfTNn8UzLyKB7bQdCUmuh5fr3ps+AZM1RE4OKTdN8f6JL9On0
         pDXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744271515; x=1744876315;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lpl8zAbEIjI+Lb6H7QBXK8cdkJsDACxXk+NyRe5la8o=;
        b=N9JEVyqLQuETKXlV5IX2LYfsLtF4JadJxRJLKi+zPBuYIOYbv3FgR8K4H1VswksZjJ
         hi/6p+bYmShLvUpUtjTGqFuXvsfkUk9UNJeTNv7yOf21nhuj2t851sNQZUWqKPic61N4
         GV1+GF4Fl8FlSpPlgPCRZvwOCNXMZSp2wBbCEmr8b8jpL5zgkpIu/hZ6HiWz0XLWqOM5
         WjNS1fQ4ZkVHovUyEgdazTuDf2G4+62aqYbYT2QdxeWCG8npPFf6VKhLmDrYGr73fRCd
         X49IFrzZeG2/Sn9trlm6rObcNq0HI474JrgxpiAiHoGqnntTjo/2ae+q688v20YErN+6
         1Cfw==
X-Gm-Message-State: AOJu0Yy4EHDCabA/eCZnSKvEWeYAEgrOFAmOKGuQzfPiUHybMyFt94nS
	r0W51Cz8sX/wxgRb9B9NbEYYG/vSo3jHSsbWk1H5nXtrzd55Q8KQEfVPFKz3Qq4b/T1Ngm63BEF
	6
X-Gm-Gg: ASbGnctra5+BkdiReI3dUoovvxcjM1CUBuVtEbxonlOWlvl38eTxSfwlB1pHgjH6gUK
	dMDg8ffcPr5nTukp4SwkJs0wudjbw5rA9VmffrvQZPKBXqZxJrDdYmiq4skOvbJDT8iKHdp//E7
	N2mL74NgHHmc/jKQs1XjKMr4/80nTNCyG4pt1hB6yUiB/kozmesXa0m0X9vNWbXDr/5aTSHe+ow
	snrE3MNRwoPOUJJIy4rkKDbXpBer4fUOPgTkFRVgIhWjwK0vlZnJmomcZn026ppQi/0UxN0nby/
	5tcEEExSSF4ZNuZo+bQ1n1zdeDE2HWS3+Mfv4hanCi/8MXTjaKqNuKVRvey6RlQXlJybsRk8Un4
	7gtJqJPA=
X-Google-Smtp-Source: AGHT+IEzT1ewGfH41SSkbJoQsC19fBoD+zypaKImMySBDed1YGAoMjR0+5jvhdrGxoNGOBFRSFoaxw==
X-Received: by 2002:a5d:6da7:0:b0:390:e8d4:6517 with SMTP id ffacd0b85a97d-39d8fd48324mr990624f8f.21.1744271514677;
        Thu, 10 Apr 2025 00:51:54 -0700 (PDT)
Received: from localhost (p200300f65f14610400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f14:6104::1b9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43f235a5d82sm42301155e9.37.2025.04.10.00.51.53
        for <keys@linux.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 00:51:54 -0700 (PDT)
Date: Thu, 10 Apr 2025 09:51:53 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Subject: Re: [PATCH] Mark all missing keys red and expired keys orange in the
 graphs
Message-ID: <t6jl2z4mj7akie7phlrfverhogoq377ohydivndbm3sixr6tsq@jii3x5qtgfts>
References: <20250409093959.1240211-2-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jyd474bnjd5jpmyb"
Content-Disposition: inline
In-Reply-To: <20250409093959.1240211-2-u.kleine-koenig@baylibre.com>


--jyd474bnjd5jpmyb
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] Mark all missing keys red and expired keys orange in the
 graphs
MIME-Version: 1.0

On Wed, Apr 09, 2025 at 11:40:00AM +0200, Uwe Kleine-K=F6nig wrote:
> In commit 2dd67ee0231c ("Drop all keys that expired in 2023 or before")
> several keys were removed that are still part of trust chains.
>=20
> Also there are currently 15 expired keys that are also expired. 5 of
> them were already updated with a later expiry date on the keyservers.
>=20
> Mark the nodes of removed keys in all graphs red and the nodes of the 10
> really expired keys still in the keyring orange.
>=20
> So the following non-expired keys wouldn't qualify for inclusion into
> the keyring today as is because there is no valid path from Linus to
> them:
>=20
> 	Marek Beh=FAn 26BCFA05FCF60E4C)
> 	Minchan Kim (87C1A206239D04FC)

While it might fix an unresolved tension for some people, feel free to
add the opening ( that I forgot in Marek's line while applying.

Best regards
Uwe

--jyd474bnjd5jpmyb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmf3eJYACgkQj4D7WH0S
/k6N5Qf5Afu8d0/42AA3AztvV7WmKzrvOj4SohfNMb9VpljLIZ0Ly3q4cZdvrl8c
y25iJHfMIHZhyP2/HprHLicoKmkQSvYqacoHE3wN0WZ4HMMttlZTjSuWYtBxW66M
z11lFJ2chGI4aEsuhLXaynyOebA/lQQJB0Gwtz1kyK6sZfxftpWF2miMvby/xa+P
fhi2vprgK7EkK/gdS3/cbu3Ndax5fqJjXeJ18xqFL8gyoGkOcf4YcP9yh6qNS9qI
7eZQLt+DoEVLVdM0rU7tzSeCrxHVNs/5vGECSksKthNLI1I/GLv2boMPocJEB2e9
f0f8TgrreMAfqte74ZPrzQo9QYCksg==
=bScu
-----END PGP SIGNATURE-----

--jyd474bnjd5jpmyb--
