Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D473E8661
	for <keys@linux.kernel.org>; Thu, 19 Mar 2026 17:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773943197; cv=none; b=pbUckzDTUpCt8A0qdqk+5zSUBPYJLFSO6ryosNJKquPSN2vaot/WhVYplO6j/cl2m8wDlvvSJ56N2DUSiOMK+lxMqQKAXoeake4QPwL0ahcXGeIOEBNjCOIXphaydiCp7ZCEa7h3Cxs24pPNs1bE7LWefpMVXdJ89w9huWUXJUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773943197; c=relaxed/simple;
	bh=u1EwoiCgVV+CnLCWGcaMzJQEGQjSF8/mCl7jofywLWU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OmTwM9e2hMwCYL6ffX5UFwQYNDMaf4Q7UYwMY7wLAX4we1ZBwA+DoTT1y/2vg/DjLaBFQJKxYGGIHtcymU63TO9/m6Kq/OQXJPnpz5rp8PSTBJlaOe2TZ+9rsHWcuxMARscIa8O56JRDCFAsHrPYXcgwqlJMdV8DxEseM0uDFa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sPqITzUd; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sPqITzUd"
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-485445e80bdso10909505e9.0
        for <keys@linux.kernel.org>; Thu, 19 Mar 2026 10:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773943194; x=1774547994; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=u1EwoiCgVV+CnLCWGcaMzJQEGQjSF8/mCl7jofywLWU=;
        b=sPqITzUdsQGv8TkUwjd5afS+G3c1tf9mwxdlfg4tPoQNZ44trP8q5GDgAnmhCIOtfm
         zTC9/gPwIddmCFQAMGHweFVQyQnm1kB6OjGzvjh9f+jPjh/hgmQQuA1r43xHgNT/qAk1
         hliFSIKN7brbXLhl4LUFe3U+uS80f/A8zI3k162HdTEtbtnTPfawDr5eqC9Slii9DXUM
         uYV8yLxqV5vX3PCK97vsJUu869FUy6R6QslLD3fB/CAd4Hn4wQrzGMmfaI4jPKHS6EXr
         I43IwPTTj+Q8hUG2a8sObYlt2YG1PNbgyX4risqqAq0AMAS8V34mGmLQHdG85Q7rsEgp
         zC6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773943194; x=1774547994;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u1EwoiCgVV+CnLCWGcaMzJQEGQjSF8/mCl7jofywLWU=;
        b=VgqWaovRn15PCpVFb83KgUH8STf1suAME5tbNTUOGnG/Bm93ei/5FIzdNzDX8Cn2ET
         gHbWZ7JJ0uD63tl3UFIJPV/IQaVhOc9bFCxcMzGc+qT/iua+tNs+9tPeG+8PA2Q4J04l
         VUjNhhgcqAkAJBLSKChMhdk3x1GtACg3j7R/Ff02TUwggJL1JVgkPCDUkEb9fo0S6ODE
         qIC0oGeaoweq4XVCYcwcbtza7RJn+G64WAhYv9JaKs8RmRMMCnpsPAFyOE5CXYbEhcbv
         OudyzE5QWVfElgp2WehGiDb/J0BK7ouDiHf2yqU5U7PdwlV7A0g/mhP7LnuJKDWhKC04
         3xDw==
X-Gm-Message-State: AOJu0YyKL3laddf9DAyEtKgWdTkNZgg+kddgG/aifNAkVZ89tNSuaeG8
	oadGZFJNzYWGDGRPyo9tNBEZpxK9HbkCRAKfmQnqv74Yz3NyKbt1LrqNutixjAYgaPs3H0MFBDk
	TNxI/VGs=
X-Gm-Gg: ATEYQzyn5uVdMJlwCO0iHSTsOkZAPcf7sDbk/dIgIo/efI+0YGXoo29+poJQyevP3AG
	yzE9UDaBjWpC2xcpwJoe1WCF/NT0UL86vrQxKS/KXS03FCLg4K6ZNk1WPZFhuuVeBQZEyrD8E/M
	cKDpszQ8VIRyLe9lARJSv+YSimvcsyBeMjlB8YcZufmlOrhkDrb3dJ953H+qeKoHyb+MyHMDkkK
	PWf+nrlQ85XqGcf7MJinZtD40rafS/p9mUfbm+lnRav6JCziC35UWoMOUEjJEtSCw1k+ZcxuqaZ
	sbPADN4KMW2uDnVVvzvhLIK4gwkRGt5BJnV3fsYU+cvoNkfMt37XOBJTkN2v7M6NkCdP9f9CIXI
	yxIZ5aarjo8NjvVxXGHPT+YQg1btl8aLfw0Nctt8UtGNiE79hLkQNf8Tk2ocXPaplde8lAL5Fs+
	pE8oWIarUWfZ+Tjw9TFQR1TLvRt5dyqDc414umfIQTZa7F2+38ep2czKvRmWUlvbXXr5dxjgpJ8
	8bxgKAYjaK4D4g=
X-Received: by 2002:a05:600c:c167:b0:485:364e:9328 with SMTP id 5b1f17b1804b1-486ff024f53mr96795e9.16.1773943193987;
        Thu, 19 Mar 2026 10:59:53 -0700 (PDT)
Received: from localhost (p200300f65f20eb0489c14e0d33e92293.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:89c1:4e0d:33e9:2293])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-43b647120a1sm254844f8f.30.2026.03.19.10.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 10:59:53 -0700 (PDT)
Date: Thu, 19 Mar 2026 18:59:52 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>
Subject: Re: Updated key for Marc Kleine-Budde
Message-ID: <abw30dZV3H7cn7V7@monoceros>
References: <20260218-smoky-spoonbill-of-sympathy-360c05-mkl@pengutronix.de>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7vbbhqmp6t73ngqt"
Content-Disposition: inline
In-Reply-To: <20260218-smoky-spoonbill-of-sympathy-360c05-mkl@pengutronix.de>


--7vbbhqmp6t73ngqt
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: Updated key for Marc Kleine-Budde
MIME-Version: 1.0

Hello Konstantin,

On Wed, Feb 18, 2026 at 02:25:58PM +0100, Marc Kleine-Budde wrote:
> Please find attached my updated key with a new signing subkey and an
> extended expiration date.

This request was mostly served by 1ef906520e26 ("Periodic update from
keyservers"), but the key material in this thread also contains a
signature that wasn't fetched in that commit.

I would consider it sensible to update Marc's key accordingly.

Best regards
Uwe

--7vbbhqmp6t73ngqt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmm8OZYACgkQj4D7WH0S
/k6VGgf+IOayxCm3E+jPaHfeMxrXzI2jryKTExc30jKw7S10wENf/M7fm7igfDpz
o5FZzCXBGXKo/aZhsSJgJqgoeAeA1sk4aUW0mwATglCOCq8cjqbI11rVF7JuDmk5
psl/XvT5hHsQeZoYFslOy+xJyALkNo58sa+XTwzWJmmm2Bxt0YSg80bXSyXHPlw8
pSu+cwmVTY0dxAFiP9N8Ao/kE9D4tG6mYdpey+NCegfOWLZ37mqyXhIBb8Ciny3f
MRvQutg/Ds5U9xGa7Q99qxqwnmdHpRgY7olM+K24u+qZDeyRXKuOj6ZDaQm5Vobm
J2Mc1y1kyjel3/1YS+aocvgCV7i+2Q==
=6OwA
-----END PGP SIGNATURE-----

--7vbbhqmp6t73ngqt--
