Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5103C3164C6
	for <keys@linux.kernel.org>; Tue,  9 Sep 2025 10:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757412208; cv=none; b=EyU79dd+UAhBpoac0EUqWKnJcYqbUNbuLAj9ebzwMvKbl+lQ64YCBXjFp+v8ZIjKqKjDgkd8ja4fiY47K4j8fqQpXW0q68l3tK8a3JupJm5VgFnTGOstV8RWRz1RGLd9gWZlRVGOVsTjN0p6+SFXa6DmS0+Dfo6q6fOc5jtA9Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757412208; c=relaxed/simple;
	bh=LCSwm5FLtsrMpsmBfKmbNdNtby7/fI5V578w3ha6Kgk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=cNhtImXpBK6QKKdYSDU+cMgtCGCZtX30m8lM3vNqHZO56gL8//Lc6HbsF5lWmB1NdafRLxN38+BPBv0PA0wqKDJRpQdeWju04GhkcvnH5Qb+pFmeViTC387jm4z8ixuD9+CZjif7cC6gH0HHw6/9yhZr35T/TmnY1bTcuXlT4lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KahLx3i+; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KahLx3i+"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45b4d89217aso35054195e9.2
        for <keys@linux.kernel.org>; Tue, 09 Sep 2025 03:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757412202; x=1758017002; darn=linux.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2u6rtm/LFrzQDo6Z8Nleb6ZbE6yNeWQ6z2cCVaDRYfk=;
        b=KahLx3i+LUr+Y1pfmvOMaGAGCVh31IFMhFaqtte7YfG/sFExLE9CbV3Yq+vzCqK+Yt
         Nd4YDbv/CN1PI455AAUEV1iDdsqJ39hcDwWWDy6Pvak/szUNJbIuIOihU9YD9jnCHwPj
         JMlr15bDA01ncRhzJ62bJCKfxLM/3awcNYj9LvC3AlMsNycRTO+u4xb7SWxsbf2dNu24
         I+zILQoepDhC+Cja/LN5FWufEttrQQ4Lyp19Fyd6SzWTiDjTNyj20gXDKVoUGes3zAHt
         5NXJL6OfCtbhFxquVKIfN5iAX7TGpl3rIvfKhxQTu4Z0HLBFzrgZKIDbeIngVtSJvxFE
         4pug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757412202; x=1758017002;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2u6rtm/LFrzQDo6Z8Nleb6ZbE6yNeWQ6z2cCVaDRYfk=;
        b=tOuf4nrQZkIqlDkQOTTNqEwrpJDY2u4epFumgLKrfu8zedSKxaiQFt1xqdSyRzm44O
         i4bHVr/TKm6IfOaqp8AuQ3cRSKu/vptYUhcIkMwkytV2uEMJ/3Mopl9WZqrZ3BaPUcR4
         Rsfc+En4Bf+Ug+GP+r9jGnNhGfFK6KqdrgMsiIjBDo8V15MQUTP0Iv9ODLcycdEZFKBz
         tIbSA6DDoPSoywY5ptX0UiMrsYIvAT20OXuei//qGmEyrdRru2QWajGqmHCNLmAYg6V0
         i/c6vQIZZLyhldRqCwWsJLUrtooL8KVI5QmMe0J4eaiKnAYuBN1LO9qBOjjlC6rAKokC
         kQwQ==
X-Gm-Message-State: AOJu0Yx0kntxPLd3IaNVjXtlbH9/basCV99SO4OTg1zrybONRmEymIH8
	803KMW5jyF3TZXvlQknXkZEW3SiSB1ng2Y3kPCvnfY36+EhKk+F1t6230vg0VwDB67pp3saTFqX
	wKrjV
X-Gm-Gg: ASbGnctQC4SfGbeb1bZY34UmP47eJQ+J/Y2SBQbpArwvK2xCHPL2lkg1fUjPUpHYzJb
	Q19iVGEv695U+hPv+eESxjYc3gjVEtKC9YIpop9QtPRwu06RrOP/TsjFVsSL44nxysLOu6FqHcc
	hPXakLoPvGija9ZO7Ku6pN6jtl4mrEIQRfv0S47fNbduCy40XHJYws6ecsc2a+k7n2eUtQiwTCB
	/oKhw8r3OQgRGj80VO/z+D1MGxJGvDVNpn1pYD3FvHdg2RJPnunvBciTfAsV2OQ3azW4Fa5oCid
	BYZV1PXxSJu/1O2pMbECjLqBHUBbAYGs4eIjVVH+kNegy8Vw3DxjtDNt3ZzVW0ce5fsCUFSPV7P
	3ldvCGEfYtSeMAMx88Esvo1aEUJQAJTRnlLu0nktF/tkSoFAcCijEHU2baWJ9zdIF
X-Google-Smtp-Source: AGHT+IHlPrJymBO3KWgTL0YDjIIPnR4zQuR9zrcriFZZ5m/Emczkts3P19HqeceHmQBuH+a1cbghSg==
X-Received: by 2002:a05:600c:4f0d:b0:45d:dcc1:3a6d with SMTP id 5b1f17b1804b1-45df3a59895mr5845755e9.4.1757412202201;
        Tue, 09 Sep 2025 03:03:22 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3e75224d165sm1914884f8f.57.2025.09.09.03.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 03:03:21 -0700 (PDT)
Date: Tue, 9 Sep 2025 12:03:20 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Willy Tarreau <w@1wt.eu>
Cc: keys@linux.kernel.org
Subject: SHA1 bindings in your PGP key 4E386D9C9C61702F
Message-ID: <isa35mrnkbzbirunf55qmy2bmxj4jfbcado5o4xi655oa6tawa@azwkdgaggj2g>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rgipzo37lzpge6f5"
Content-Disposition: inline


--rgipzo37lzpge6f5
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: SHA1 bindings in your PGP key 4E386D9C9C61702F
MIME-Version: 1.0

Hello Willy,

recently your PGP key 4E386D9C9C61702F was updated in the kernel PGP
keyring after you expanded its validity
(https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/commit/?id=3De8a319=
2d295094087e09f623595c8309b2eac915).=20

Taking this as a hint that you still care about the key:

This key suffers from SHA-1 bindings which are not considered on par with
typical security recommendations today:

	$ sq cert lint < keys/4E386D9C9C61702F.asc
	Certificate 4E386D9C9C61702F is not valid under the standard policy: No bi=
nding signature at time 2025-09-09T09:45:16Z
	Certificate 4E386D9C9C61702F contains a User ID (Willy Tarreau <w@1wt.eu>)=
 protected by SHA-1
	Certificate 4E386D9C9C61702F, key 014180C7E8419672 uses a SHA-1-protected =
binding signature.
	Examined 1 certificate.
	  0 certificates are invalid and were not linted. (GOOD)
	  1 certificate was linted.
	  1 of the 1 certificates (100%) has at least one issue. (BAD)
	0 of the linted certificates were revoked.
	  0 of the 0 certificates has revocation certificates that are weaker than=
 the certificate and should be recreated. (GOOD)
	0 of the linted certificates were expired.
	1 of the non-revoked linted certificate has at least one non-revoked User =
ID:
	  1 has at least one User ID protected by SHA-1. (BAD)
	  1 has all User IDs protected by SHA-1. (BAD)
	1 of the non-revoked linted certificates has at least one non-revoked, liv=
e subkey:
	  1 has at least one non-revoked, live subkey with a binding signature tha=
t uses SHA-1. (BAD)
	0 of the non-revoked linted certificates have at least one non-revoked, li=
ve, signing-capable subkey:
	  0 certificates have at least one non-revoked, live, signing-capable subk=
ey with a strong binding signature, but a backsig that uses SHA-1. (GOOD)

	  Error: 1 certificate have at least one issue

The issue is that the proofs about your UID and your subkey
014180C7E8419672 belonging to your main key 4E386D9C9C61702F rely on
SHA-1 hashes which is considered weak since at least 2005[1]. Practical
breakage is not known yet, but still I recommend to update your key to a
safer hash algorithm to reduce attacking surface.

GnuPG doesn't create such bindings by default any more, but it also
doesn't fix these when opportunities arise (e.g. when expanding key
validity). Other implementations (e.g. Sequoia PGP) don't even accept
these keys any more (while GnuPG continues to be happy about them).

Find more details at
https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3moty=
yoo3@7vf7ip6gxyvx/T/#u
which also describes a procedure to (hopefully) fix your key.

If questions arise, don't hesitate to ask, in private or on the list.

Best regards
Uwe

[1] https://www.schneier.com/blog/archives/2005/02/sha1_broken.html

--rgipzo37lzpge6f5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmi/+2UACgkQj4D7WH0S
/k5Sbgf/U7YOmwzF3cy9O8jnGs2q+SubanAoFTeRU58PFT2QL67u07eHney2GFa6
EL87/TH1NegEqkScjrRl0A6FBaMm6mBK8GxxL2igQgu0aJO75Gv5ftUuJsQB/lh/
ldt7acq4J8ERCalQiTRgTTTI5pxWJXFE3u11mCpcRQZ78aOXSIPoBAqFit/y46mZ
aqSArX2OYq8k0FJGkoARs8U3no0aIQ4QfErgOI9B38ofcT2U6xNPuBkJxlSFhdx3
puWBjL82mmkTcohutoVbUvWsTLXiC22e/hA7F9mQs+hqDb9WXP45ZMl9D7vKTPWb
JV2YTguFxwRSXfKYtJ+sf3lWScZCxw==
=dnEo
-----END PGP SIGNATURE-----

--rgipzo37lzpge6f5--
