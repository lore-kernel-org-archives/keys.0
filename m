Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480FC1E8329
	for <keys@linux.kernel.org>; Thu, 10 Apr 2025 15:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744300133; cv=none; b=GqXZgOW1VmtLX0khIkSn8zqJ4PTdaLLcWwtttvRqEjyRrLxc0LLtc7QRuIqEU2pnBlLpslgJH5UiG3LpTYl8PyeCrlP9zejAqmTGkNL7NCbKM5rRoHuKd6QNxU+W/1AIPnbHwIe/Ws5qcFOlXLijAOuCNi51RCq4x09tjxXpu7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744300133; c=relaxed/simple;
	bh=UsozoRC4SNSTvyMcP3Ex7BOFai1XnWqQtCJVEdUE3ak=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I5T1RDz4YKYhpljcNDua+d1zIZ7J18UKgJ9xT9HE6OaufZoIJaQDHHZNRxsp0bn3jxcY+keSGSaf+xVUouCciEgWDSLNI6JPv+zfDZ1ktvzw1NIqH8JOk3en5q/bETOneeStt1eeXlzJjEGbLAC6yUdzCIsYQLw+evtiYDXJgYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2uj5OvaV; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2uj5OvaV"
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-39c0e0bc733so801393f8f.1
        for <keys@linux.kernel.org>; Thu, 10 Apr 2025 08:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744300128; x=1744904928; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UsozoRC4SNSTvyMcP3Ex7BOFai1XnWqQtCJVEdUE3ak=;
        b=2uj5OvaVW3kKb7oE9naSasrunfAmM99zBwVGlJiBTZs11SnHlNHxqeVZQHhYu+JsFU
         uuxOojHjr5OiGja3shzmB1eC2CIcDYq0S9j61d2b55Mga/cWA5MNUL7BAOL0w6hlz0yE
         FIJjGzXWgWKbj2uZyMTmNEA5haw72ibvcQ/j2DddTDwr6kw3F8hHeoT1MfiM+sIBFzQf
         VbXYc0hUwnBRTGH6K0lm2Vy/CNHNQ1qpK0aR8DcmVrxyRGgGLj0g0Tq4GrMHNBA3SRqY
         aGspeZQV/RFW56BC3zUNJy/EmQUGxhHUVxt86n7L5bK92jYzVYxr2m0aEdO22yXD/PVX
         uCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744300128; x=1744904928;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UsozoRC4SNSTvyMcP3Ex7BOFai1XnWqQtCJVEdUE3ak=;
        b=fE7nfxwMALEaisNypgboV9w0W+Qo3tg92NPV36dx6l+kLbKzkpxtDz1Q7qIOoBSiMS
         hF2qGp2C0KX5Up5nCGaTeHDsuj18QOMISOIuE/t/+XW2Gnm0Jop8Nra1lUNOrFQvbEhT
         CDyxV8llF2apwxwWqBmyCRGzRroVYaV/rPgIYyjI8lKb+lBTyDCnKoYaynxnHJ+U8Z8i
         yoSqSAgkhqt/N54WLk//fII6APBaX2kL/P1Quaahc9IvJ/tPyyzXyzRKNCslsvQ8Vzlg
         UHfZmxbpQf0vmRJPJZkezSyvSEMNSpzHn7AMw5nDf4t2HfrsGWy8h7TAZqPGk+aWBZlo
         YujQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIenUpLu0EAopOAUJM6oKX6iVGYYiOAtXO2pma928ofpQ1fCpiyGnJxMFvCV5tsf3ypAJZ@linux.kernel.org
X-Gm-Message-State: AOJu0Yzy9z3UNa6ecUw1igvdkpr9bzgVq5efCGCp2VsK2G9ykiag6ZtL
	pDuWABYr0w7fK3ew7ncdTA0eian1rWpkfXaRX5NaEd1WzMx2sYsZ4sIsKwSfSSo=
X-Gm-Gg: ASbGncu1iWFVuMajIZeHwNURLCD7/TVQuRwzE5HzIiqTc3Tg5ZdCufL9FHC7Ykc+nkD
	W0pw5RLWTNt8l7zi/Kho1DZ3sJPRin2eu3Nz505uy7OEyndooegVL41Drh0UeZUEjlQPgLBte06
	sCUTrDIbOnKpwtDrTSqSxz8DEZG+NSyxZ6Q0I0b1CspYA9QC3uB1sZ7aeKrUPxe8AZMVvUNDYbd
	I0Q4PPRwBh4tcKkvEdSNrPK+/yT6kq8/4kThj44f+LNValhH0alvGAXuRJzBLoaIf6JwvWSUxMw
	ZgqZDBVtXlELxhCYj5zfmGy0EhlKCMzHog56aFLnHcdwxD6by103+IPbAaZT60SoeMc5paA9MDe
	Rf3eueeA=
X-Google-Smtp-Source: AGHT+IGZQLHhsDN7VMTGkNV4eSPdLQpyjEDX+V5es1bFcUGapGvn+0d55kw61HgZOHhaAVVL30Ov2A==
X-Received: by 2002:a5d:6daa:0:b0:391:2e31:c7e5 with SMTP id ffacd0b85a97d-39d8f27070dmr2851996f8f.6.1744300128309;
        Thu, 10 Apr 2025 08:48:48 -0700 (PDT)
Received: from localhost (p200300f65f14610400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f14:6104::1b9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43f235a5ec3sm56422315e9.39.2025.04.10.08.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 08:48:47 -0700 (PDT)
Date: Thu, 10 Apr 2025 17:48:46 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>, keys@linux.kernel.org
Subject: Re: update for 26BCFA05FCF60E4C.asc
Message-ID: <ir2bphnfyx4iyqeasp3vr7frpizeprtt4dl7rdcdfzqsu3bbmu@zi4s7tnhbzl7>
References: <wptdly55jnnsddob2t5emtd4kgzzxur36f3iskbt63xo6ffu7k@wgtkjr7tgyss>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4ja6c7n5et5c7ls7"
Content-Disposition: inline
In-Reply-To: <wptdly55jnnsddob2t5emtd4kgzzxur36f3iskbt63xo6ffu7k@wgtkjr7tgyss>


--4ja6c7n5et5c7ls7
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: update for 26BCFA05FCF60E4C.asc
MIME-Version: 1.0

On Thu, Apr 10, 2025 at 01:52:50PM +0200, Marek Beh=FAn wrote:
> update for my key, 26BCFA05FCF60E4C.asc, now with signature from
> Krzysztof Kozlowski.

Looking at the diff there is also a new signature by Jacek Anaszewski,
who also has their key in the keyring (BD6A501CB78B7C26), however this
isn't taken into account by wotmate because it's not on the primary UID.

Is that a concious choice to only consider signatures on the primary
UID?

Best regards
Uwe

--4ja6c7n5et5c7ls7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmf36FwACgkQj4D7WH0S
/k5etQf+OcBFNg7bxOd6ZX6ZpO8ZxQkFRgMQ2AgNP8Qavv1jDQjNfQTapudKjwRC
UK9viYMtgAb1Z1SZ8flp2SsqwO2cPH3w7P2XyH/kjZazfI+lYEP+c68U9gYP1ijn
IRPhXMU0wUxS7r5fWTUitEuCFJ2vpYluFazPSroCHSY7L21IM0asMWS3+JuKwGZx
1z9RkHHJJZSvQjLcxM9EB27AhtBj0qhMBSjFggfsZX+jQ4LAgiU66HCnwvjCOb/h
2m3ALEk7PwoAGVQNvPMkEP2IaLuMe4QfyPtJuvdrNFJK5djfSHgxqIwdj9DD1Pwk
OOu1xv47KtseHHd+CVlrD4b9bjZzow==
=6WSA
-----END PGP SIGNATURE-----

--4ja6c7n5et5c7ls7--
