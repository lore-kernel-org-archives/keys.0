Received: from mail-wm2-f12.google.com (mail-wm2-f12.google.com [74.125.225.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1329426F288
	for <keys@linux.kernel.org>; Tue, 15 Sep 2026 09:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.225.140
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789464602; cv=none; b=QCBRUGIpG349I85LSnu/IEoc+DtkaIO6bwzX9HD98EdwebKMYJ3y2u77D2iw9CRYajJyulegzK32kqNORxIehTXXyOzfgnWFf2KYYUZM8gzJxi4BNUHz3C7VlRfWfR/IaqzTGVQV1uYOgZDdV22GRytzgvwa02IjYZ+tNiigq3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789464602; c=relaxed/simple;
	bh=ABbqqU8CiuH+R2B435qPA+8vNEfpw23iPx7ta4I3l4w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mRKmLK6ZjmPBBUo+Qo0DRMnlfNhVyaVbM02SoI1rYsBtYGUnppJ2hhP5rnWC3NNxP7YxbqSj4fZDatEU4yN1NJhbp9dMKqU7SVcTEcxmgH73yGdhEimwwTv1VUvhN3bEvGEZaH8BcTnk+65hsFvqBjSlcmPXS6sl02kFMuwJw/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=j9BnQOHE; arc=none smtp.client-ip=74.125.225.140
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="j9BnQOHE"
Received: by mail-wm2-f12.google.com with SMTP id 5b1f17b1804b1-49e620fa473so17020705e9.1
        for <keys@linux.kernel.org>; Tue, 15 Sep 2026 02:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1789464596; x=1790069396; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ABbqqU8CiuH+R2B435qPA+8vNEfpw23iPx7ta4I3l4w=;
        b=j9BnQOHEPaSz+ZYN3k5f9jDPqFX7Jje7MZp+3PgGQw39Gpq/p98LrP0+N66vNGJqHC
         2xzw5+CfJn79Q4ktoGNUm67tMB7HluoMyDSjJ51O3GNv8FNDHAq9eh2Xx3nUxTNFysbs
         J6MQQH2zitWse6BNBsLAqY5ljksLE0B6iVcjhQzdEu0MxnoMxQMr5IBVnsW3iRZ8ala8
         K3ngM6rAIbzUhv2HAHsh6RnSch1l7vLPLblPmBnF96l6XGGzX3Vrgw1gAVUn6UMGkb65
         pKXCMgsAMTtYRV7szHkYx+L0DU1jTFat/eujO3YWF2nEQVG0h4o75GEYrVpZhScyh9uJ
         DWvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789464596; x=1790069396;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ABbqqU8CiuH+R2B435qPA+8vNEfpw23iPx7ta4I3l4w=;
        b=0aWBKfG9j8PYn44+U5jhR5sG8QrwazYZdThKDYVAbhjPqGKG06YyaKnAM+lImehroM
         BlHh8mStgo0nLi/PGECKeeyxlLCh3C4kvITvbULkfNtSASM6T9iPqXPlHHMnwOA+UkLH
         tAoTlXFB66shcxVXojd0lLZWKy1kUgr6JfVrkaMxlrsuQnEfMamkqCxexxod8pD3mIAp
         QtE8Iq95TQn5W5D7f2H8nlHkCa9CjhSD2cCJ9SrbYx/pXMKJpy+ewHzxMQHRGnIDgY6o
         cQo1elezj04n7tQo8MSwzxlhGGXkZcyxfAB6kuIrk79fuaYWeYjgJVmdS9mAyS7oY+cN
         Lxcw==
X-Gm-Message-State: AFuF++m3kvdq7xm1nAf97xQeQ8JxI/koSpdhjPztwspQHhTvas3Of5Gg
	vQ3LSY/jwrBd3mwmYRl/XZ9Yg7Q5fUV0uf2dNQlAOcuVAhHduJqmAAqMHz3N6E/KSLY=
X-Gm-Gg: AYBFou1vEi1GbpQNJJUPvYur00orYd9/BGohZMM8NuvBuCFmXoPNl5M7tEP0EoVRK8Z
	GcOD0HbnnUFLgmKA2WIPkKIZ1IbtKjeZdtND1e6mnpc1Kn81obRSaOi0FsDXVojGM48jIcI+4vf
	O6FgalOFHJpdobVPie9FyI77KROaf0tWJvfT98mOpmylq8AGfyVYZTG0135FDUTUk55LNJ0fbDF
	3DQdn1VPFHu+Lqlc7kbnCqqL3JaIBlPZuBJrVLlqk7SBXaDJ1TDKsGU+R5x4wjeVnjdH9NLhIxR
	fn3mV4lXwlUwVRUzvJLLDVJKz1TpTMA9koemYPm11/Wa9ujLg6fAHVNrDuezUzghFc++3SQKh/9
	/aBIXISwj23u1Jh1xMrO1E5Ys3FBiy9azTI3T8CfOxJYEa1kA5GiFhLAbyVF9pcXrjtXJbIMJmY
	FdNOfJRk47OhQtTGjKoW437E6q0YwGLlU2hRliapbeFYudS1Wy9RVI+Wxetxnm+fhGmdf1EktQE
	+g8
X-Received: by 2002:a05:600c:1c25:b0:49d:7fc:5dc5 with SMTP id 5b1f17b1804b1-49e7a637672mr93201215e9.1.1789464595652;
        Tue, 15 Sep 2026 02:29:55 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-49e7ef80010sm48633995e9.11.2026.09.15.02.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 02:29:53 -0700 (PDT)
Date: Tue, 15 Sep 2026 11:29:51 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Sinyuk <ksinyuk@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: ksinyuk@kernel.org
Message-ID: <aqkPXZuq9t5D_0OI@monoceros>
References: <20260813182513.keyupdate@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tzqvopldb2wshqj6"
Content-Disposition: inline
In-Reply-To: <20260813182513.keyupdate@kernel.org>


--tzqvopldb2wshqj6
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: ksinyuk@kernel.org
MIME-Version: 1.0

Hello,

On Thu, Aug 13, 2026 at 06:25:13PM +0300, Konstantin Sinyuk wrote:
> Updated key: adds the ksinyuk@kernel.org UID and revokes the
> konstantin.sinyuk@intel.com UID.

Looks good. The provided key block contains exactly the claimed changes.

The connection to the WOT is still given as the gmail UID is covered.

Best regards
Uwe

--tzqvopldb2wshqj6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmqpEA0ACgkQj4D7WH0S
/k63+Qf/dyagqBWKRQhm9kNYCqAfTgnD/QjDwKZu/KvMNgbF3Y5d5+FvYm9egyI7
TV4W1YGI50H9fQixaPKGhtRESClygCn0fOTVdlDE+CevMmRbxYW7oNDS/ugY9MB2
7VgJN7rV5rmlmhwvQqOfrDCIZQqS3FnOwpHGcjyQYz3joHpyRZtbrRyz405S/SxF
B/892OqZ9RHqAEONaXygUkMJweSl2D6jqqT8B2bWpt/vGWPfhgKufdhFmFXTuc/h
HIP/NQ95YFNlbr3mSBWnFylTIl5rovm+da6CJPckqQhA5vAXTjXDyv++3qlLGtTn
14YwQLh9ujk8iMdrj8XnqKTXRRR7Eg==
=D9vY
-----END PGP SIGNATURE-----

--tzqvopldb2wshqj6--
