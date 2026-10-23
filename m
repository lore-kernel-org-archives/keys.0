Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.41
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792741419;
	b=Vxp0Zm+tJ1MJCgyxce3k86F8aS4Wkk3RcqbzGcRDiNdht/g4jMDPdKvOsZZiSflGNj+F
	 uLKVpla2vZ//s0AUTXcfM4MVyypYpD0+n0Rd3qjfBl5+fajGV2fj5VT3E+45/38DxZA7l
	 qtgqYIA22Jbbf0KNf4KrCgxIb9ocTxK5YBi6kFW19BiEG4ugLectI8U19D3ZqV9J15o+S
	 oR0bUO2Tmqwx/bbbiHpC3k1IYsjIP0QX9g7AQr95FKwFVcrDlblVSFzN4FK+Pl3sk9iIj
	 tJPynMqErF5nc6jvoFyc8Itumo5O41yFE4Hq7DgGuoM0loyE7sAoyAAP4dz6pi9v7Ig==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792741419;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=WU8BEsSR//q8jV2SqZDdcVPx5Bx5ZG3AUw+SqnbYe/A=;
	b=PK1WJ2nx8zhJ8IqEp1dSJpuyMwhIsqIjlcfVTkb110fC0rHxHoxB2V2Cm4TL54KLjkJC
	 Mr8NndM+WVYozxCXyACwWTNh5CKMI0syRcnb4pF/eXXnZgYXY+AWXzBN+fZ88/CMKOSbM
	 rxHttyum9ZW6mZYRkg6dfrvt8MuxMjSCmEib/t6nANwSRlkATCVV+NSU02tbMoTofJMfy
	 0HkmQTSFWnkVl+T/9Oa+uDbIPrptq2AjDjVSAHaNDi+BoBkmUhhS8TaQcd1L8nJr8r54V
	 S1VE76AzYpYgN4O72WLxv8z9trv7wM1+7EWNh2WvTAnKiP9aTg/C302hix7zDpKK/JQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b="e/HPXVn5";
	arc=none smtp.remote-ip=209.85.128.41
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE1E606A31A
	for <keys@linux.kernel.org>; Fri, 23 Oct 2026 07:43:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org ABE1E606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=e/HPXVn5
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4a20c923847so4829395e9.0
        for <keys@linux.kernel.org>; Fri, 23 Oct 2026 00:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1792741417; x=1793346217; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=WU8BEsSR//q8jV2SqZDdcVPx5Bx5ZG3AUw+SqnbYe/A=;
        b=e/HPXVn5YtiFtrOF03oDg6NJGje7q5QRP+8Tuy1mi7ayu36Z4QGhUOu41/nUHTWzpw
         dFt0XKpX0lwkMmBPB7RbPM62ROW0iqG8O1DLf0RbO9W+Yjqvrlglovmp29YMCCXkj8hD
         eucHOtoJrOFpJCtDCn+k9rEfm1+xeK4HdeBkW0ZxVBzlvIEyLjr2bJgpQGfaKAKfkYfB
         VH0SwbWH6Vdlp7blNuKoL0GJ26guRjf2JwSCSQy/S8/MlY2d03V2LW397kEvC1VfhULo
         mbjIaJa1PkFVrS0eqL6NVt8SE6hk4JX4O8gUtx3wgt5/xDSN/SDuQvY4+KXJfiHLvyYS
         scBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792741417; x=1793346217;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WU8BEsSR//q8jV2SqZDdcVPx5Bx5ZG3AUw+SqnbYe/A=;
        b=PxAy3HVuwTzCScQPyjY1grt7Rsy0NTk8h8Of0gxygFV45Ug6RXDugmB6KuWdhzk/FC
         2x4R6CCgvLGUHyxcY2lT5E+qLd+UU6VdauBNfNfGdCDZ6KcTseGsTm76IAXJT0sx33+r
         1VS4hL9q1LfDlsCf5RQLYgkQVSz85yICRnaa4HlAzoB1Iy638yWH1g4Bd4ycIkST6uRv
         1HVimMe9cYm6ZcZ4P1oYoQuyH/qXD7PEHUjPeTQNYekV258wFm7CerwFuCykfaDvmlQD
         CBnCy0HhZPziHfI9dbEy+XcjDxMAivMQHSZqxc/AaHtNcWj/KSJlSByzmY2Pk3rp854f
         WLAA==
X-Forwarded-Encrypted: i=1; AKwUvBxqHUoIxWUAMiAmm7p5I9ZWUvxNa8M4Bxbcf6TH7lQ9BBMTQ2InsB2cXNs1T1gChEFg3UYT@linux.kernel.org
X-Gm-Message-State: AFq9FYLpdaUa/K7nikS1j/nV5kahZnuUD5Hrei8iW5RSyDbEzdVgr66W
	k6h/rEcQSCKJJp4FdIOqfW/P7iXEf0cxCmOBviKHFimAdgostyTrvLnzW9cbX4GLkp8=
X-Gm-Gg: AYBFou3dT2T9W6V5StCympvP8dZ2Ong2B39fO6GrneF6EAPgJroDaYHcKF7BbfaYMTd
	WRX+BOT+0DkjABEtsA27yVnWGqW8JPNxYdKG4qUZVOBBi3JhfKSRJxbazm/uB/W9lwrZKlcGDGr
	E5UP0Cgu1Z8i2dKpD8VAOMCP6XiRQmSGNQZJFWx5b+D0t7QBoWB3EHuzsYNVLnsFHNYyz4WCBNy
	2qGhOwBv6or2EN13W8gQCc/ClaobumdRWKFnlt1DYTQMp3zNQ9clM9/SKqtD999DNuODk5Keeeh
	LoB6XtHs31dPIXt3ZZFFh7QTVjSkypLMmA/v0YveV2W5rIiZgBYn/aVa8G2HFY7Ao8B2AmDe4x8
	l5l5R83Evg4Jz3kSN7BdXGQr4REFjlh8joRh6enVDliD0wcWThcgA/7rRhH7pAO3PEgRHQGJOBJ
	pbktzL+It0OnLyL4qqvsGzOx7m8OHFsvGc5Q0aKoJBZrMpVrWng3ebkT0pzdu9WTttLA8Ge37IF
	RDBhKVMj4jRgfsozNNhhvkDAyxhepBHeCu9BIt/ae5fXurVnhYZ1/SJJuoLXd6iKs0v4jIxoIMq
	04bGowSYeBdDe/lFHKCKtXaHlaLWPhZRDsGNDItu2wo6
X-Received: by 2002:a05:600c:a416:b0:4a2:1824:f784 with SMTP id 5b1f17b1804b1-4a218250369mr3429385e9.3.1792741411923;
        Fri, 23 Oct 2026 00:43:31 -0700 (PDT)
Received: from localhost (p200300f65f19a9045816c66224fa2d94.dip0.t-ipconnect.de. [2003:f6:5f19:a904:5816:c662:24fa:2d94])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4a21046b918sm52787365e9.11.2026.10.23.00.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 00:43:30 -0700 (PDT)
Date: Fri, 23 Oct 2026 09:43:29 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: alchark@flipper.net, keys@linux.kernel.org
Subject: Re: alchark@flipper.net
Message-ID: <atsPUPMOiSQkfY2y@monoceros>
References: <c3904a796a9db39caadbed7192c5d4e6@alchark-surface.localdomain>
 <c3904a796a9db39caadbed7192c5d4e6@alchark-surface.localdomain>
 <ed2bf4b8-a66d-4a9a-864f-8b7cc2c43bc8@kernel.org>
 <ed2bf4b8-a66d-4a9a-864f-8b7cc2c43bc8@kernel.org>
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
	protocol="application/pgp-signature"; boundary="2rlrnzqkmhbcdmtt"
Content-Disposition: inline
In-Reply-To: <ed2bf4b8-a66d-4a9a-864f-8b7cc2c43bc8@kernel.org>
 <ed2bf4b8-a66d-4a9a-864f-8b7cc2c43bc8@kernel.org>


--2rlrnzqkmhbcdmtt
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: alchark@flipper.net
MIME-Version: 1.0

Hello Krzysztof,

On Fri, Oct 23, 2026 at 09:11:29AM +0200, Krzysztof Kozlowski wrote:
> On 22/10/2026 16:29, alchark@flipper.net wrote:
> > -----BEGIN PGP PUBLIC KEY BLOCK-----
> >=20
>=20
> This anonymous email address does not exist in the keyring, nor in the
> maintainers file. Please read the docs about purpose/usage of the
> keyring first.

The mail had no real name attached, I guess because some howto was
followed that uses mail(1) or something similar. The certificate has
proper UIDs and

	linux$ git shortlog --author=3D"Alexey Charkov" -sn v6.0..linus/master
	    91  Alexey Charkov

which is IMHO good enough.

Best regards
Uwe

--2rlrnzqkmhbcdmtt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrbEB8ACgkQj4D7WH0S
/k7r5AgArtMPxlnT+JqaEnjY4iLRD9Keknd7ydJnzHp9AZgJ5sEI1eifKs+/s35T
5awO91sdsAt6FBoW2qMQVsgZ4M0oUjXGzxOWASoXyncx52I78hR5ZJmzJCjJdeCU
Mm3JVZXvI8uJST23fwHFDF8Y60VvghCtX4tt/xEQSBNugjs92r3rXWOAJ2pVUhdM
7tOB3vC123BfkuSaIKu1gmosv8Sz3hkztK4V6uZ9YTGM3hLxe5lWmwGEdHZmbMbI
8SSZyG55BQmerukXOiD8m8YKo14rzDmIjPg72CP/Tm6y8l7VscXY/QCM3Ylq2Vx7
NDlZocoq4EVs9YIwsCIxvjnpSCU2Jw==
=aa5a
-----END PGP SIGNATURE-----

--2rlrnzqkmhbcdmtt--
