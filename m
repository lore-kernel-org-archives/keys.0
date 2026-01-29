Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8163937AA9A
	for <keys@linux.kernel.org>; Thu, 29 Jan 2026 09:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769678407; cv=none; b=iNH46icDTQY0BTwjhaqlJ+MAQCqjamcsv73hiEG7/Lf1Qp4dSTfOlWE+MNkxzlnKvWm0ncmQYokL4ncuupXPa+k40QJXjwcjJjZk8kkZDy1uHpS4O9SoFws0WTVHNzx+v/1qeI/6tezhONR77eCnOKygVjhDTtx4Z1pbneSR8co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769678407; c=relaxed/simple;
	bh=Nt9UYDX91xpK6ueSiFYzy1iVFn6VOWfsNWnEDlGaJSE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=drB546F8YCnNdt1hGmiK0nOPqTFZlDJs/xlHeyRLSOGMVnbvfLgJy4oNBBtf7lk9BLs3iuE7wSpjwDDBZtM8bZGirI3m18/+nWP04d5bWI6ICzWJKJQmRiHmKymphPP0UFSNxdODIMQrnf09PN5v1f1wNhANaLGHsHMti0mpguI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OH9Zx9BQ; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OH9Zx9BQ"
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-43590777e22so444952f8f.3
        for <keys@linux.kernel.org>; Thu, 29 Jan 2026 01:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769678403; x=1770283203; darn=linux.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4F+v9HThnxdc5EmjoM0f9gDCYFQlB+uelY3uLhNnod8=;
        b=OH9Zx9BQfH/PGmSORO2UdfKKck+2m1u2FOGL/pqtnq2l9jXMqwVY8qiomjbBsFKX8w
         bMUIhVK9k5O2vE5PbJCotJo8ReXT+3ZO0SmoEVjipkithYs+EOgWJx4g5W3mMQYzXaVG
         JbLSdfPeb8I7Enp11/v3hyvD2XsSfs54FANkQgipae0Q3Tl81iwkdE61v2F9Wmdlm0wF
         aj4jxRshcnRD6R3VW27MSgd8FKcXwNfWd17r4sarbECl6/X3UyMYL7PNfHsda3NM+pU9
         rTkZloIRiPLFEsYfAl9wQ4d2dhC7UNlOQHDQ/6lqkpAyyD9sq/syLEZ/5vW276ah5n3w
         Ux7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769678403; x=1770283203;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4F+v9HThnxdc5EmjoM0f9gDCYFQlB+uelY3uLhNnod8=;
        b=RTAwkwybM5DiuPr93sHj+1m8bh8ImICDtTJNEvjxLRIDi59iQ8ht5sTyU4yp7roDTh
         yqJAOaEu+s5zZwqfKDc4NCcJMbiFs07JAyIsX3+KAAWaA7tsKlSdd9B8J3nC6QZeUdYw
         QLO6tJwcxIEufwoFZybBlN6MIRWEuWvO51qwPCqWv/IAhOyJZ//Rd6dq5HanWFf2631n
         /T2F21n2o5SWxEVjdjyPQvQF46kHB6lLZRaNPHOAU/TZkXYsjDZgwaHmyzqbfDoYOTAB
         0FAQwOok9EzR2IX5e8I+HjfReAykyPnlBKI9g54ok+5I95nI0hX7vFo6lgPeZZiH+x/u
         Jipg==
X-Gm-Message-State: AOJu0YypEX2x1fAqwAaqViZKBm7+sbNyKKUEe3tyqTZYyNxTGxSlt0SK
	7Lb1kKh4vyclo1gtog2e3oWoQyNWiPwggBktBPP7JjSddA76EZmapBrfgZrMWuzWkwU=
X-Gm-Gg: AZuq6aLa/WuGgwvsxqg4dwWFdPQIQCpZtAOqeKX0ryL8erWLGTwYLiU30ESBqVzsaX1
	85AP2Hq14Do3Y7cm6Vcrcwp8C6zRtcon+zTG1yomJkqLmVKyoHmNXxpw9W8XlqUCdn8vusieKnd
	ky6KN8c30e5NUuSAePduIbMFhxD39U7EHrRRPbip41TM+sANPRKjgN1ONZyRE6VG1U+DfWRNQKC
	mJOoMg0jGdgAY6P48jMmFqjpDlBICK4Py9D0rBaQ90OW3X5gZMD3od+2ACBy5grr/Us2/9o8oBd
	b1GSz5vwqi6cgyQbb44HclPSRUum7qDBwcwZMeqqNkVAGK1PsUVilEy3xRRfmQgcutk5b4K1fxQ
	2Bifb2uZRsm17O4iZeNqnh7Ket5stFn/SI5xtUHX1fTvSS5bOCIxb8T9+8AjELkbQrPHuBKe6WZ
	aJCNJTd6+ZST77o3C6WGCdCJUxpjuQXX8rD5n52h6i+iq7Uy5aI1g0XRwtQXKhW31hfy/P5J8RZ
	hbg6/LyIIuYxQ==
X-Received: by 2002:a05:6000:2c01:b0:430:f58d:40da with SMTP id ffacd0b85a97d-435dd051623mr11466478f8f.10.1769678402418;
        Thu, 29 Jan 2026 01:20:02 -0800 (PST)
Received: from localhost (p200300f65f20eb04703f3ea9880728e0.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:703f:3ea9:8807:28e0])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-435e135422csm13458380f8f.40.2026.01.29.01.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 01:20:01 -0800 (PST)
Date: Thu, 29 Jan 2026 10:20:00 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Seth Forshee <seth.forshee@canonical.com>, 
	Seth Forshee <seth@forshee.me>, Seth Forshee <seth.forshee@gmail.com>, 
	Seth Forshee <sforshee@kernel.org>
Cc: keys@linux.kernel.org
Subject: key AB4800A62DB9F73A (Seth Forshee) expired
Message-ID: <6vz6qlpdzoueoigolgs2x6i6mpg6wpa3hos34feiu6n4bnvc5d@syix5qqdbmn6>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mvweoabr6b742z3h"
Content-Disposition: inline


--mvweoabr6b742z3h
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: key AB4800A62DB9F73A (Seth Forshee) expired
MIME-Version: 1.0

Hello,

this is a quick FYI that your PGP certificate AB4800A62DB9F73A in the
version that is tracked in
https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/tree/keys/AB4800A62DB9F73A.asc
expired earlier this month.

If you don't use this key for kernel work any more, please let us know.
Otherwise I suggest to expand the key's expiry date by doing e.g.:

	gpg --quick-set-expire 2ABCA7498D83E1D32D51D3B5AB4800A62DB9F73A 2y
	gpg --keyserver hkps://keys.openpgp.org/ --send-key 2ABCA7498D83E1D32D51D3B5AB4800A62DB9F73A

to extend the expiry by 2 years.

Best regards
Uwe

--mvweoabr6b742z3h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAml7Jj4ACgkQj4D7WH0S
/k6kJQf+JYg2GH1Tq5mAKIuj/MrGhHzXWkYDboLQRKHRP9I3Mo/EfEBnn1ZuRuEe
r4O0IXqRULmtm5Bq2IuNMvKnjoiKOfigvkpw0RYuJr3szaThec4hLOuHipV4bRdF
QnCyfzedrtDZCiYkKg4fQcHRQPC0LfHwsuDiGG9vpnInZCYsINnUDxfc7V/YZ9m3
c+HAWxnYqk61ONTTarEOenFwbv18hq8b8fB7LWYJaZLcdFbJ/OO2NMNvKUjtsaXs
kGe2JlL8QQcYck1wW0LNenyMQMqBykWb5qfiBstdIeRN0v9MIg7EKIEFqVQvzaTK
b69Kig4iSei0usBOAtUhpXoHrFAEuQ==
=Tycy
-----END PGP SIGNATURE-----

--mvweoabr6b742z3h--
