Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF8E2E62C4
	for <keys@linux.kernel.org>; Sat,  7 Feb 2026 10:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770460325; cv=none; b=gEbgGVrv7JnEgxWu+K/+eCMTJ+LF+QEgY0S2MbdTXhI+OritrTpbJJ6WknoPxQiLBpI9NZCVFEdZ/0O0trwVs3Pek2AjodTDypQlVAS8JKvMQ0jlDfX5qUfoqRQe2V9u8x0RJYlKBV8uJZYYlNlBWBqvelf8vZ0JOzrsPDC0kOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770460325; c=relaxed/simple;
	bh=wyA7zui0qBc3rrxpRozzGOioV1Bkg0P+lvj4qJvGEp0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uNn2GDGnI9woWEqhPAFyGZ3tKheOlZh2+Mht/JoMv8/04sALe7A7e9vqeFKw4vRUIok+QnuLdbvO6fDv3YyTsChm1hlUyGpJ0p3FcLpPS8b1BWqbff1148Wj5m50OYMl8vB1rfrGFZY+s/dy/9gRIO9BSWpI8POhF/blB3AkNMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=D+KrJXzE; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="D+KrJXzE"
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4805ef35864so24967765e9.0
        for <keys@linux.kernel.org>; Sat, 07 Feb 2026 02:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770460322; x=1771065122; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wyA7zui0qBc3rrxpRozzGOioV1Bkg0P+lvj4qJvGEp0=;
        b=D+KrJXzEL5coxhLq7AqGd2q/V9Aoe/1ICefaSE7M2+JEHwsTfiVEFm56ONQnbtu0c0
         9h6pwlnEKNDMefH48dRYu3Eg1PuAt1T3YNM5iy+SOHj/Uv5NRXXxvCp2bY627iLpsRPx
         XT1SvsfYVMCyek84GaJYkxHGiUzScM73x8YNy7cqJQ6KkdOgviBKO5XqYe75l23NFYrJ
         +LV9k9uzUerfFzGrIL9M41V35L441UKFhuvZTFxsHSfxWhjyK3wmaNc2B3i0FB6rBvEE
         wrPuGDBYBRkrp9UGqAqM5YhHm3eR3Sm6lNyJvnJ/cizH0KikWCy8sFVCIL6iS/IIwLsG
         rmbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770460322; x=1771065122;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wyA7zui0qBc3rrxpRozzGOioV1Bkg0P+lvj4qJvGEp0=;
        b=ZQ4GniTKQSEw6mcPFd8up70mQ/XKs5YCm74sjxOp3G89euVhvX3C1YofAVHcCYWMWI
         tRqxUqFS7QtFSv9DXO0gjufCTk9GNJRfdE2W2LRwE5quFNyyre5KvncoHAVz/Rg/rJcq
         LZNvsAr7z+FQOexWtRgAP7JUKXq0O0IUOk5XvD9r6/gcYzpuw8MgtdRaN8dK51K70hqH
         TQbhsn2/rfojS98NnkpdkvIVoTO/FRkB/blD3S0U7uZTvUeAqWylVrsOfRmcnQeQx02N
         mS+JXY9hUIqp8+ZbuJrNMoJ/I1wFrqzTEiyq0tfNGl5YzbtmqjwAu9YvyhvtrgPkgHKf
         79Xw==
X-Gm-Message-State: AOJu0YxOedfP5NmqOyL4eYwoxOMQuxgLvw19GpBiAEBMXRpF+7MDUrU3
	iJxENcFhTI4Qi/wy7oPT+UthQ9czvT+2DrgpH4S4y6wFk5/o+FW2yRtIKFjfTtAZ67c=
X-Gm-Gg: AZuq6aIyL66peiEIUTvD1g2FA7BWAqXY7SYlcnJruxNPhXB5X+RnpcjULqFM1dF0Nu4
	p9LfY0vYcM6y3mei1hLN9inXsxw8nZWId/Fxbz9/xYfdDfHh340XGaG5OOcHwS9Geyud7hp8w3M
	ZTDAfeHlDZ8tPO/nu1q10oXF6R8YLe3YDuNk9B1WPc9YdTMSqbC/YnDycuSOM/v8h1guvIBXeM4
	x+gR83hgm/jUPCi9iPKeCqxxjPuXWw9P37b2UVdhuhjhAEE9YKiMn6GQU0Ce/4+iMoWGZNHFfX0
	O99O9kx7Io2Rz34kGGRold8KC4VxUc+0+L/Hjgx2C3YPFF1MI2RNgp6vfg2CAQluINrGexUOVdH
	wz8kWTFQ7vT9LlDOzk+WOS0H8DPKv12wpAO0xFVN/+E2IX7dtyYfRcahglk+6glSUcwZ5Sfgv20
	SHIldMcuH6fLIEeh3a
X-Received: by 2002:a05:600c:6612:b0:47e:e20e:bbb4 with SMTP id 5b1f17b1804b1-4832021d82bmr73055765e9.26.1770460321362;
        Sat, 07 Feb 2026 02:32:01 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4832040e91fsm40726295e9.6.2026.02.07.02.32.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 02:32:00 -0800 (PST)
Date: Sat, 7 Feb 2026 11:31:58 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=
Message-ID: <aYcS0RQf7CpMGYBr@monoceros>
References: <20260206.waiCh9iex3ai@digikod.net>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ja2lkkjfnflmbavn"
Content-Disposition: inline
In-Reply-To: <20260206.waiCh9iex3ai@digikod.net>


--ja2lkkjfnflmbavn
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated key for =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=
MIME-Version: 1.0

Hello,

On Fri, Feb 06, 2026 at 07:29:41PM +0100, Micka=EBl Sala=FCn wrote:
> Please find attached my updated key with an extended expiration date and
> my mic@kernel.org address.

the certificate looks fine to me, the changes are exactly as noted plus
two new subkeys.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

Best regards
Uwe

--ja2lkkjfnflmbavn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmmHFJwACgkQj4D7WH0S
/k5vogf9GtU3L3G/i/iNLEzVASadUZwBFTegxC66a7sHcQefzNcnsHsMhvrRlkdO
K0zpcuclL4Fk57McVix7u6anUY+LHb36WBMD4xs8h87YZ0kIn17FhqVrJF0ZXM+/
93EO+pEwx752/e89Z60gXNw6ZLFUEET/hE5y2xwMyXWHLjZyzucD4a77JbQO4QmG
PZ+CrQBNdTGjVcamdtn2pa4Fei7bCCzhwbz07mMnFBI0MW424ing2NhBk3i8Fcyz
e6zcDssV6XffKn93Y5R/KuW5K5CVmQVXvj8VaoX/g5yFejX0N9yEn8Nq4T+1F+M3
w+mj2gSkthgHTfK4YFaVlnRkytDVSA==
=4wk9
-----END PGP SIGNATURE-----

--ja2lkkjfnflmbavn--
