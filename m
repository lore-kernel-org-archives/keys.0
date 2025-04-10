Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668721E9B3D
	for <keys@linux.kernel.org>; Thu, 10 Apr 2025 15:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744299636; cv=none; b=QYYWzgHzhSn+zPhBg3wDcOIEiPX8O0gQg9O6GZ++LoiYA0uIpnoZHO2CEcqCaqVi9x1q5vs4aP+4zCAVZxxt2TC4f0SwMQw1rAQEr9+APwgJB7QY9DPgfXsYDcZ9o9gO3f6qVHluLst8Sb8qlaUl+UjrD+OTK83dqYg0Sp0LbY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744299636; c=relaxed/simple;
	bh=ku8yYhKvwvF3qJrna27BzrhJn1H3zvifJQJ4YvhMdfU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ckW6Eu9TH6yg9X15vnW5skUXtcBXPs12+zLwGPcloz/i9ca1JKahhFrNL59pREAFW1GSOiuucOBWBHs2FtPGQ7slLjCX8A9H03V0myCXtM67xBvBclsi+Uenpj+w2FlV/jctJCwMO9gdIfpycYhyWDQ0SA2TprdPCJiVgubjT/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=c1yRyNad; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="c1yRyNad"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43d2d952eb1so8141775e9.1
        for <keys@linux.kernel.org>; Thu, 10 Apr 2025 08:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744299631; x=1744904431; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ku8yYhKvwvF3qJrna27BzrhJn1H3zvifJQJ4YvhMdfU=;
        b=c1yRyNadGR95wwDhMyctckR9stCzFuCG5UFJBJOxrzXf79J23qJrnLED1o7zqJfz1l
         RN+p3AaKJsPo9dErNDMF62mLPrNQMCNr01gMcF200qWv7CMHAJ5rftKzk5me4vsf8YW1
         3iAxkCzfp1UEfOZpGY96mPAZ8CqdyvKahs3xMkt+gQtkQJSTn5khKId154tIZ3nvDoB0
         rDPsEFi3am18G9jWrGN0UMxZmRs6SK3S++DZczDWMe40pvCmC4NVs4Eq75n4xV6MG1xK
         Ag95Z8f6CLLSR2zAVBv2I4IJOl8+WIWZJYDzVHRtsActD0Kn1I6g9ynlCjr9uDWHITdu
         MY+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744299631; x=1744904431;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ku8yYhKvwvF3qJrna27BzrhJn1H3zvifJQJ4YvhMdfU=;
        b=WkpNvDPaGHhrB+ORL1MJLWxXw68iFDKFB3d66D63nMmKTFyJXqz5BkFIcti/DOWuDE
         LIGSaCCutbExnVDRspeB8OzSVXQX2x0Is0nP+GnJAcWqLT8KxuNjrQESYpoqNnVI3Pt1
         HH27c6IVkFnKxInjxZFqaQnOYxOCUidKnrv/gsAY7REv+yxQoMHIx+d5+fMcJtZTA7Un
         Lj3NT1oW9SNM/Yx8Y5azNSxV1BRAnmuqrBYxuzRdsxK1yVOEl/29DBSZopJqgYU5wEPF
         HnkcbHq8WrfWkmkVxZkv/rkjHkcm3BxEqQ5i9QQa2qwwD30J77Z77K7F01fljMc7hwau
         GuQg==
X-Forwarded-Encrypted: i=1; AJvYcCUoiKr75/rte5txNuZcNReqmkn9tLmeQc7XSvCLwdmbAH3EwblVgV816XXDJTdzP4PxqH3Q@linux.kernel.org
X-Gm-Message-State: AOJu0YyQmtdT0L7zH/NkSJJ7kyuJjV2rMEJkxmeT1bW8avAIt4UT+6+b
	gqXh0cylF+tNnZpziwnkfAi1JQehS7WmQvL4Jh4UOTUwjErbBT3XsUDxMZhJyTg=
X-Gm-Gg: ASbGnctmlgYqx6A65KGi2Ov4OgqU5xJaXq0V6T/GWK20h2how+0t6phkGB9bgVRRUct
	k0qPYoIqf0BIeYFceXamxFoMaP/x6IBEDpb6MAbLav/1/FcnmTCde+dRMpeKhJSZkBHd6QE5fAd
	k5ehwlPPQRvcHMdi5SI+CqofaeeX2tXKIDYojEXa8zUhSZj2++yhPrc3tHWvFszqmMRZ0M0lszc
	pxR6qU8Ry/MFGews56xPjcv6O+XLGNejQnWtbx90zVz8D9WQJbG2WpfHzEouuBwC1OrGAnvAgTq
	LhV6tZ2ZSEzWpdUbGWRflo4J9UTImR6MvN+v5quy2UBFwpYfRLMOr2iDcN/BWmyScB7z+96FZxR
	LJKCseVQ=
X-Google-Smtp-Source: AGHT+IES+XRC+fxnP0nIX2nDm2i9LeJkqG1p4mnlNk9EHAV/f9L7g3fVK5cX32ImNuinIGWcenyWOw==
X-Received: by 2002:a05:600c:4e51:b0:43d:209:21fd with SMTP id 5b1f17b1804b1-43f2d98b578mr42303135e9.30.1744299630674;
        Thu, 10 Apr 2025 08:40:30 -0700 (PDT)
Received: from localhost (p200300f65f14610400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f14:6104::1b9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43f20a0bf4esm28976835e9.1.2025.04.10.08.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 08:40:30 -0700 (PDT)
Date: Thu, 10 Apr 2025 17:40:28 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: Theodore Ts'o <tytso@mit.edu>, keys@linux.kernel.org
Subject: Re: Update key expiration date for tytso@mit.edu
Message-ID: <sgntx3uys3zayto7jczmbmixlvqnlqoi7fdhyrbf5sszg2wjlf@nigvacgc2v52>
References: <20250410143455.GA327426@mit.edu>
 <20250410-simple-gregarious-beagle-126b4f@lemur>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lpxs2y3ey3d7v4cm"
Content-Disposition: inline
In-Reply-To: <20250410-simple-gregarious-beagle-126b4f@lemur>


--lpxs2y3ey3d7v4cm
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Update key expiration date for tytso@mit.edu
MIME-Version: 1.0

On Thu, Apr 10, 2025 at 10:43:14AM -0400, Konstantin Ryabitsev wrote:
> On Thu, Apr 10, 2025 at 10:34:55AM -0400, Theodore Ts'o wrote:
>=20
> Updated, thanks.

This is rather odd. The commit you created indeed updated the expiry
date on the key, but it also dropped lots of signatures. If I repeat
importing Theodore's key, the keys are not dropped for me. (And that's
even though I use a gpg version that is affected by
https://dev.gnupg.org/T7583.)

The graph before the import was just "Linus -> tytso", now it's
https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/graphs/D36F769=
BC11804F0.svg?id=3D3dab90be2abbe5e36edbad698070ff390ea3f886

Best regards
Uwe

--lpxs2y3ey3d7v4cm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmf35moACgkQj4D7WH0S
/k7dhAgAkzxOktHICEAHIv/g1xH0esUGeEzpMtiX4+Ygs+hmwFPuNda4fpq4oibb
OShuoXi6sXTmumk+abCFMwkCQPyr5WS3IbWf2+e4obn6Z+WGwU8AaQ4AOxSqUsk6
8DJFJI992+G3ZDkysD0cpV+GTEXITg6o9Ylj2KLchCyzVUbWMSEBffVFqTI9IkwE
HNuymO41Syj+urf8sY0jovV9Vjvhn7MSG750LqaghmcDjjrvcGOgDAD0dlX+HGDW
RVPssdwmKABeVTSmmznh0xGXdJDW9Ho8u7ZbsDoCWNuPSyG2EZ7JtslZC9zQ4Tzd
i6IsXTp9FfXI/lp1nLCpn/heSJ8GDA==
=S/4S
-----END PGP SIGNATURE-----

--lpxs2y3ey3d7v4cm--
