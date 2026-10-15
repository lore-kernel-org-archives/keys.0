Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3465753F68D
	for <keys@linux.kernel.org>; Thu, 15 Oct 2026 15:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792077794; cv=none; b=QbKd0Nk1X3qSpmO5HdYZd3FY2NHUHeafWIxAG3n2SwR5OIDZ8YG/fKpphauWclx9o8jVMBRPEs2iXkt/0Bbn6UmFh+AdN4gqbg0Lzvs8dFK2dIrGnW/NhJpNFyJ9dUcaIMBoyrgQxCgjOz216MU6+mtUSEO1QdeOmQWeoAi571E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792077794; c=relaxed/simple;
	bh=ACKtYkt6QIHZ4/Gt62Z9CcaQ+bAGc5eV8diDh1SxKms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fAXDr18HoQGi1boXpdzPPnZ2HCaC2YXkOGJTL3FDBL6OBwbIb8gUfH7+kKT2FMFWdb6zR0g+q+FC9xyNwfFSqPmHDObFG2UG4mNxBnf/EKv2XzOODDuN9UNLYPhFOEpGZWT+6ZhULj4OL62nyuQ1pOU4QVV1HRiki3KfiVTnTEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=RB01lWFj; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="RB01lWFj"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4a17baef589so20537955e9.0
        for <keys@linux.kernel.org>; Thu, 15 Oct 2026 08:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1792077783; x=1792682583; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ACKtYkt6QIHZ4/Gt62Z9CcaQ+bAGc5eV8diDh1SxKms=;
        b=RB01lWFjDm0SlJ5opxINuyEzJVWCDKe5TKA2SJ14Toab1k5mZX6cnJHY04gpgUqMNC
         RbISzcAppBj7k3qb5EvyJGvhBwdl/JPNkU6Omp4hFx1B8sjHt6QeQZsO7ODxvrrbrbmw
         edy+2IxTZDjybksHjMnLocrXzqGJjlZIUFFCdSV72sujyf1rV/KJn5oJC0zf6cHaeRd6
         V5P6XBOKAL11GaD+yZfnMX/Dyc6Yf8mU92yxA/8JRaFsnV2/vGn81gCAJL4H8zCWw6XI
         JQWHgvYGKYlnXpztmh5KSR1luCRgFYzYOTnxiyYaQII07C3ZbLFxR9Kx+0pojG267/yQ
         CLFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792077783; x=1792682583;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ACKtYkt6QIHZ4/Gt62Z9CcaQ+bAGc5eV8diDh1SxKms=;
        b=n1WvX7/kilbuStI4v40BOj3dWFS+OvtBRmhF/wmWxA4ECtGFw/Xgn/icSrQWfeeAfI
         MbQXdX13Z2GvGG9pKv/+j24202c4sfh6oPb2DqOAZsfYAE/MxhqjN9WRtX/7aJ2MSI61
         zHNWwdOWrvaFNIMvW4FZUCR1f10CYlJ5oy23u/C2fJgNrpzzr2Ct9o0iTGZdDQveMGVZ
         k/uUTzbZTU1+lv0g2EQgtpsRUk4QHirYCxu0d+f9UfTk2IuKaFua+mH1i1Nz9SGa6s5n
         I+AoKDlTpqKOJ3nlgJX/mn6LkqiL67Y1VDCLWvXhSqVptWPuRSEXiN1qrt3h9XVZFsko
         +hng==
X-Gm-Message-State: AFq9FYI0vi+Gstc6xtLoKJddCJIdPZcZGEqjUU3rCjlFY9Ju94pjArB5
	6U17G0xiGyAt9KAgUcuEJBZO27wR4BbdBKNoHkyaCurp2cwU/N71cQ1PuSU0UNRUofQ=
X-Gm-Gg: AYBFou0jzPpuhILTCZCtBuF+MdCIvW0KirZgXl9evFvxl9WhtcRDPFanaNT73Q2o9Lb
	qqHPEVzZr7QpNkpwwNFSlEdK40gDixBtc8Tb6VmuvnDPhVYiG4ZvB3pjhg6zlPXpg6OJcTC9diL
	CApyHS8hvfyLgDw9sKjoii7SegrktxpM1WPOz02IMlCRGxy4NkGbE/xFqvrMELCmmn46VxJ+NM6
	N0MOVA63HigXWsQJ1oQqCZcPSckG0EcxGW6ljTFV6B6dqMrTEf98RwWIu91/NdKOZii/KqV3OmE
	JtMR54f8dYdWdM7V7Xc/6dptIaSMJ82F76l70W/MOJGWZVECSobUZj+XKiqxm8wPUWCmDQvqBBb
	2/c0/S8j4MXMc3ne676Nr4d0S6qmU6qDyzTpD9Dn6Y/YmTYS0OfGuGBTC4SkvP2sQKOjNXxHNUC
	FhnUYIXCZN9QesHm8otTUZAuCRsFqUIL9tT+xHVPWNlfjubO/fLCqkxkuVwVXWT/Luiz10F30Ui
	j3CmemaVdzciZ8g008vf8LRqXtJQNsHNNkyu0AKc+5NK0EzBdzIVr7YJWYetQ==
X-Received: by 2002:a05:600c:1d11:b0:4a0:25db:4591 with SMTP id 5b1f17b1804b1-4a18e4a4c33mr415002245e9.23.1792077782983;
        Thu, 15 Oct 2026 08:23:02 -0700 (PDT)
Received: from localhost (p200300f65f19a9041b7fb916e0a3bbed.dip0.t-ipconnect.de. [2003:f6:5f19:a904:1b7f:b916:e0a3:bbed])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4a1bd99faf3sm77323845e9.14.2026.10.15.08.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 08:23:01 -0700 (PDT)
Date: Thu, 15 Oct 2026 17:23:00 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dave Hansen <dave.hansen@intel.com>
Cc: keys@linux.kernel.org
Subject: Re: dave.hansen@intel.com
Message-ID: <atDvW1E2SCmHiF5t@monoceros>
References: <20261015142115.234E92F97@ray2.sr71.net>
 <272f0fd0-ed3e-454f-affc-9b97818e009e@intel.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6eyx4wfq7w6rusas"
Content-Disposition: inline
In-Reply-To: <272f0fd0-ed3e-454f-affc-9b97818e009e@intel.com>


--6eyx4wfq7w6rusas
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: dave.hansen@intel.com
MIME-Version: 1.0

Hello Dave,

On Thu, Oct 15, 2026 at 07:22:40AM -0700, Dave Hansen wrote:
> The results after rebind-modern-hash.py
>=20
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mQINBE6HMP0BEADIMA3XYkQfF3dwHlj58Yjsc4E5y5G67cfbt8dvaUq2fx1lR0K9
> h1bOI6fCoAiUXvGAOxPDsB/P6UEOISPpLl5IuYsSwAeZGkdQ5g6m1xq7AlDJQZdd
> [...]
> v3Y6j6629GcBKR6sI0IGhjWCPpiHsi5Jgut3kjYTLxTVNMC5QkBHp/ms0NxxpLGf
> 158OcqC9KxT1mH6rI56TEPucL2EXP5o6dKH+2NE42Q=3D=3D
> =3D/KZb
> -----END PGP PUBLIC KEY BLOCK-----

Looks good, the certificate presented here just contains the new binding
signatures with SHA512.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

Best regards
UWe

--6eyx4wfq7w6rusas
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrQ79IACgkQj4D7WH0S
/k5MnAf/R0idk9JVEnftizSLmp5l58WKzeAkwCkQz12YfcIDTo80EOoRrqKfdr45
45cBpcnUEMEwJXokCVtmQ5yuGKi3L1m5U5YMDWR9AqsxpzMB4mJk/aSyoumy4oZT
RcaXRUsGMcv+BC2JOaSV3Vh86iyEGuvh9i+2KZ2ykX8Ka1VqC+UGJM8DnSIq4s+/
/U/Q+t3aKmkkA1cskGfeiqiQ8aR5x4BmEtstJMdZ9VjZ23YC/AG8lhrsiy5+cuAd
9CZglE7SyMGloPd0xRMJyenhziZ/V/qswz2Ue12sw0Lz0zjjpdIwC861zkWmgKNX
p5K2zVn8XqDf26kGNN6YZCZEnBZ/kw==
=ITs+
-----END PGP SIGNATURE-----

--6eyx4wfq7w6rusas--
