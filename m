Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CAFB31355F
	for <keys@linux.kernel.org>; Wed, 18 Feb 2026 15:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771427555; cv=none; b=gMwtBya/YLAZBWHNRlHvpFlOFJKFXkKSaOqHSuufrboWH19u/HdOn0u4tq+1ql6J/0Yfl1cfLIg55HT7m+fbw+9wWGSDAnHutok7ehp02La99uIPLrZXHYNUm4ONamtO05KLeXO0RdKXIyscqGPPMV0Q+Kt1c0EbOphBwLtvCCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771427555; c=relaxed/simple;
	bh=MvG6vyj96pP3b4WBgPJQlC6VKP9pc1zgc8fP0B4mzL4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kpKGXw+1DD/AEvcgQnDU4vtEsy5voYzNT36+/zITsHdCfuCnRMA9fJ9eGG8CQaLMzCLuAfnBe4z7il/OIDSLHq2MkYJk9GwtOD7d72/KUMxfu0O8jGxC/Kzy6bz/vFeODDkxq9BUTobJUv3gRDGf/Hv7wsvXGYNX0XSmHa1rqwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BU9rak+a; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BU9rak+a"
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-481188b7760so44775295e9.0
        for <keys@linux.kernel.org>; Wed, 18 Feb 2026 07:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771427551; x=1772032351; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MvG6vyj96pP3b4WBgPJQlC6VKP9pc1zgc8fP0B4mzL4=;
        b=BU9rak+a6slDVGEpS/fCETrwnME/M2l7cXe0Qaz+EOTvRFHTi3ro5RBQyQQ5qbbtZB
         uqplkHwTj1ftdoUzhfvSQMZbl323OOqJtuFZPS0KffH8pAtEe7epKOMuNmwvukvGHnJL
         E6pLwEXjqOt1Y+KWaeAuo8g+kznJpLh2kcPe0dkPYvE/XSrx3hSkf6cOakZ92m2ZwEiB
         eQwCTeH/JptbOBzHhaYgdSKgdNowjeYEusgrlJo/0kkdvz2hz8GlRHWzzdopwdSqsZgr
         pziK7xF9B2r+IzMHOxfzya3w2Viq/ZNzcQ39+mXeguSsvrX4hiIsQfTTnmau3JpLjZbp
         41Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771427551; x=1772032351;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MvG6vyj96pP3b4WBgPJQlC6VKP9pc1zgc8fP0B4mzL4=;
        b=vgdl7+CqNSeyfrCfhAL8VNKM6GxJyGm/rmcP89HG0Y9hGeg1iRhY6zVzJ4cZm00XAB
         7uSqE0J6ESOx60Io4jnTZVIbBWNm/x6H4RbwrqUQUakAX5zhfBMOOux4VMoBS1Pf0YR1
         j98pVlX80xvijGJ9Ha4QB7PhgyoHc1FVd+BSKgnyOoIUaeadyyOUwA8F78xQui+9tYPF
         H3dz/O/J5J+ZLvLzOEQAbJDH9pUyEAbjcZdFXStGnx3okgumRl5aTsDRlZ05U6MDYrbc
         YDfAJTfwbN6QReuJUIfvo/KnyJ9JfC0pyzknB7tMFhLvc6ZXH2Hg0YaB629gq91OeeeT
         TvTA==
X-Gm-Message-State: AOJu0Ywcnf+m6E691NtsZD7OU5VBsPB/6PpJTgWuKYwkjGkI+xFHa/A8
	SIvpp8vRHTvMcbXSvYQKkptsXF6lLQHGTLKkTMOQ28vOkJT/L1J7K8xGgEmE1eWD/Cc=
X-Gm-Gg: AZuq6aIX8rqgdGyNLVDHGRPfpy+KyLCgXyxA/PP1e3pe2a3OY1gjlCFAtA4J5AXCUF0
	eeTgGW+y+NRD1OVejBcXyyHaimE9oIatigF2oLUj66pb1geeJ4qVQC1AoZxaXlotD7sUw9AU4SM
	vdL1FH5UpgxboehMAV4uOlg6GfdCQNTklt7Ji5Jaae2eqVwQVKZDe3kYL0g4UyHN2ePADJypNQc
	kBgb1JD/ZPV2QEwZ5b2YGaLXPfjuzqj+lGX4njbpBh5JDYhMbe7UaPb65bs4hhcx+/zpzkFsjEu
	1fHyn7ED6yJRCFl+Ro0aD6pQKULCGY/BKIXmuSBw7sqgOuwSUDL6O3gStSJYe7BYycQwiSG2uTp
	gXkCbQe69F8kgWX/KvKTTC61/cf5m9iVLhY6ecOcqmWh1D1GfzQ+4ZC+cNL+JSORlkJDQvWmnk0
	8YUeZvrMFWmBxj1z96jI5RNnkWCi/mleTurgVTrJWDnynZ6X7Z2tIYOgzuponwmFqoSnIMPkbsT
	JWu2lN59wbXELc=
X-Received: by 2002:a05:600c:528d:b0:483:7ce6:1efb with SMTP id 5b1f17b1804b1-48398adbea1mr37469775e9.17.1771427550902;
        Wed, 18 Feb 2026 07:12:30 -0800 (PST)
Received: from localhost (p200300f65f20eb045f22b3d7f76a6f4b.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:5f22:b3d7:f76a:6f4b])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4835d99497asm807998445e9.6.2026.02.18.07.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 07:12:30 -0800 (PST)
Date: Wed, 18 Feb 2026 16:12:29 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Marc Kleine-Budde
Message-ID: <aZXTh_HVEkLBM-L3@monoceros>
References: <20260218-smoky-spoonbill-of-sympathy-360c05-mkl@pengutronix.de>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r7wjkrmglre7lt2r"
Content-Disposition: inline
In-Reply-To: <20260218-smoky-spoonbill-of-sympathy-360c05-mkl@pengutronix.de>


--r7wjkrmglre7lt2r
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: Updated key for Marc Kleine-Budde
MIME-Version: 1.0

Hello Marc,

On Wed, Feb 18, 2026 at 02:25:58PM +0100, Marc Kleine-Budde wrote:
> Please find attached my updated key with a new signing subkey and an
> extended expiration date.

Your attachment contains two certificates?! I guess having included
9D2055D575B17DD1CF423BF08D3005AB545A5C73 was a mistake?

The other certificate (C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54) looks
fine.

When importing it, a few SHA-1 signatures are dropped (by
6BBF9F19873B518D Luis de Bethencourt, 06CA9F5D1DCF2659 Marcel Holtmann
and 140DE4CC14A029B6 Wolfram Sang), which drops the shortest trust paths
for Marc and thus there is some further impact on the trust paths of
Philipp Zabel and me, but nobody falls out of the web of trust.

Best regards
Uwe

--r7wjkrmglre7lt2r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmmV1tsACgkQj4D7WH0S
/k51JAgAgfWFPbkYDfISeMDa3n8b6B1KxYHuj6u7nJ0VHtBZ8O5oGbwc6dKVrT25
I/GtGwbAbAXE9XPiBPunHSmCvszvIckq4m0rEEXvxcp8udrrVeIhWd2UNv5l83+u
AkA/Qq7bqN/SPL8tnK2YkNP9CI0ZHet7cH4lkoPUcjlq4jNC4bcfvTHypfCGUUeD
NdwKi5JxfoLcGahJhIt1/GVJbOssNwoLES81qjoR/Nk/XKNLMLfRkpI2lAH9jvaI
95twMHNnNaArKAbd89CTY7cbfTcxU1m67Yo+beHuS46foSV2tkbhe8H9YMsyidE9
E3WaeLvFiP5PZoMTli9PRGSfRICVQQ==
=wIfK
-----END PGP SIGNATURE-----

--r7wjkrmglre7lt2r--
