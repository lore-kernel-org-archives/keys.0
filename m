Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032BF3537D3
	for <keys@linux.kernel.org>; Wed, 25 Mar 2026 06:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774420127; cv=none; b=Cmhm2xDoFPy1CLpIBs+Qj/9gTJgwQBUoBYGZ0/OtvJ3nZDgpx1IKJCWcNFmYOI/QgfDgi8hAgC/69n/T9VSi0mAZsW4UvlAW3f8eSHB3nIqaFzrHJZ/t1be7JBXzcOwFw8P2Bv6sdEB5pNX0wJ3Hlh95aNGRaA0WYP8qqc07xyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774420127; c=relaxed/simple;
	bh=i91CbDoFUetLJ0UsdjNDzQdKG05TL5pfEDwzS+ADfaY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BbNpySGC6Oy4I/rBxL2srkLSEdhufojlKc8Q0X8Qx5IxSCXvMNY4Z38BJT7FTU6YGm7XwwIbUBAXCxf/6vPz57P3mAnv+tTc67rvXj9oXdaQjbldO9GBwpg6mpmDH8u9G4euJENPhMagTdborJjtlUlDc1fMSAQHhGUevjBFROM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Vj2JUQNO; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Vj2JUQNO"
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-4853c1ca73aso19115235e9.2
        for <keys@linux.kernel.org>; Tue, 24 Mar 2026 23:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1774420123; x=1775024923; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qO8F6MkH8jhWdFqw9FyQ+hcp/sUEBl/esKwQZm/pfLY=;
        b=Vj2JUQNOKYXdCxua2FJ20zBwX+lOTXiHHAG/9rWWKTjMzEcziOHtJc0CDW8CuyfwVE
         T+CNTeaPxymdHWA+/yyzVwBSt6xBuw82JDGahF6T4Y0KmbYjW0KOmgeaZrTnDugrhgeG
         GmeX2jwjZ5RYxoQcya0ckKfjePV/VnHNH5clsCbaI8w9GN0uykLP0qxdE/C7X/PTLTi7
         XWFJZJP+6Fm+8mrdH3xn4E/6JDr6jNIQXM8D80Dujc6WdROWb2toeLjYDPrHU4QIDYXE
         D3MqIetjaI5iOo8PhbmZOU+f95C2YSGinUNWpIi4Gn/4BIEsx2TiOsRVYO5QheKdbLzy
         iVyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774420123; x=1775024923;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qO8F6MkH8jhWdFqw9FyQ+hcp/sUEBl/esKwQZm/pfLY=;
        b=jxYDh4vP/3/UkfeX3m5yyY92T3+deGZ/hiZa3ASuL4Muq4lGzIwQzUaP0hZlA8f4ox
         UcWeCvO8K/2IdjBhtOIEYVyV86TkNdvi7jJnnVnUquAFSIkdLB7vS2k5g1Fpdsz4Hzm4
         EVOpSL8bm+fLG/umfiSFA4nMrtoTQIuk7vZaLVfX2SZeDf93kVHQG9FkkX9sYazJH+QQ
         fj/2LZg9BXYvuBh2MFX4UzoY3Nrg1XaSNYvBKRCdul72BsYbCOde/gfMGkC8Wprpoy7X
         g68grZFOysAlHRR5rpcLLkxhZuKOSf1gBrsDEVv+08wmGvRmiS7iKbXi2R8ydRCs1dIf
         /itw==
X-Gm-Message-State: AOJu0YzAwbQPm/5NItGKf4wRvdjUntXF1nW4T+X2iBMcbV/rG8RRpxgy
	2r2HggxYSQv1/5/1L7JYXaYvYA4U4FVqOuHF0D+SIfMmDnARgHsBuSWcuHI1Mm/SEdCYhkORII8
	xavrDNd1xXN0YJA8=
X-Gm-Gg: ATEYQzydec6TXTn+GTSXM+TXPEbr/DuOYgQd76l2uKnNwR8n/4ujMU+MIFwguMzVCvH
	HIBnX/Waf9y2r57y42HPl6xhoY5ANygHNOVMUwHCZ7tn//O+iSwKoFVQtBF8XZ3WfZdL+RvdGgA
	k5HCnKlPaTAzJCxvzSBNIQR4Fh96ZtRn4tBeRFF4lYxVAUCAN/JKo7fpylIOXg6RtVQhRR9qqMd
	BPkCYV6LG1OqIRkbWyTctw46KIDcm21NzdnUGuS0AzWGcztssdL8cAtTFHty5wKvfzNAfpGBI8E
	rDbypdYnBGcPQghE9JF6Ff/NKTzK0UaZSoPBReHYnrGFrdaiJjdAYWFhMR7uybjEvzysH6ralSg
	d/7+nuq+O4ioKQ73c4CVxwd6ji8PL/Bss/v1+O6+aumK62IJ2WHA39qIkeXhFGJ2e/HtjoJMWw7
	PvtnzHx4v3l1inl73N30nQ3/M=
X-Received: by 2002:a05:600c:8489:b0:485:4453:401d with SMTP id 5b1f17b1804b1-48715fc38b4mr30986985e9.2.1774420123133;
        Tue, 24 Mar 2026 23:28:43 -0700 (PDT)
Received: from localhost ([193.115.216.78])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-487165be1cdsm13748425e9.2.2026.03.24.23.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 23:28:42 -0700 (PDT)
Date: Wed, 25 Mar 2026 07:28:40 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Sasha Levin <sashal@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Replacement GPG key for Sasha Levin
Message-ID: <acN9F9hCGUliPkQh@monoceros>
References: <acMxMeih6N9OVzCg@laps>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jqljjwrfb5222lkl"
Content-Disposition: inline
In-Reply-To: <acMxMeih6N9OVzCg@laps>


--jqljjwrfb5222lkl
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: Replacement GPG key for Sasha Levin
MIME-Version: 1.0

Hello Sasha,

On Tue, Mar 24, 2026 at 08:49:53PM -0400, Sasha Levin wrote:
> Please add my new ed25519 GPG key to the keyring, replacing my old RSA-4096 key
> (E27E5D8A3403A2EF66873BBCDEA66FF797772CDC).

In contrast to the old certificate the new one makes `sq cert lint`
happy, so that's a good step. (The old one resulted in
	Certificate DEA66FF797772CDC contains a User ID (Sasha Levin <alexander.levin@verizon.com>) protected by SHA-1
	Certificate DEA66FF797772CDC contains a User ID (Sasha Levin <sasha.levin@oracle.com>) protected by SHA-1
	Certificate DEA66FF797772CDC, key D0065D755EB09DBB uses a SHA-1-protected binding signature.
.)

> The new key is cross-signed by the old one.

The old cert only has a single trust path (see
https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/graphs/DEA66FF797772CDC.svg),
as the new cert is only signed by the old, it also only has a single path
through the old one. It would be great to improve that, still because
that single path goes away when the old cert is removed.

Best regards
Uwe

--jqljjwrfb5222lkl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmnDgJYACgkQj4D7WH0S
/k75Jwf/ZC80FRdslxRL2ppr8QJowXkQMuno10VvXuMT6PMDkarVedoVlzO22Jnt
WQ4cL9U7RdKuj+yba2z2pJVC/Zdyj6Us/BKbycpierlGXJLy4raa6IVbbpOwWHYq
JKt+iY941YvzE9yppYQcHgiqaE1ccgTp1Z8d64RjZqAzxPLLny7neqQabeFa0KU9
PZSUFX4NWdKtsZ6aIgMzpWeRSblWZqbuUDT5XmbEpiilEQGN7JVdmOzBExBwdnQU
IT9Zvr1Zb6xM+cuG8qAN41cruWjRhv9wtUKJ+TLzbDiweUXzwJ+67a8sSOLOtCmv
IkEMi+MfI3owFS6gRoS9VyHwyL5R+Q==
=rtNT
-----END PGP SIGNATURE-----

--jqljjwrfb5222lkl--
