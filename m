Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDFA170A26
	for <keys@linux.kernel.org>; Thu, 12 Jun 2025 20:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749760756; cv=none; b=lZD4xYH0nMtJgtFyevJ9uBwl4CN0xIhdz/NUaR5haDqBsHSsUo8OGLiuWMEba2DbqzFArrX9h4c3PeD3QeCExdzn8v5hNomIlYnlXYhzZh4952E5yHiLqbRHhKkz4fo4bqRHmYXNr8xW+MauQYy3pIeEbeO7vYkjXJ6yvUAIkNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749760756; c=relaxed/simple;
	bh=VKmCYjXDaxdBlDwlnjsvgmGpREnH5bZKvxm977AZC78=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tp8RbXEf6GPdBMY0HfR/5YUmQEGkrln8Z0M2eeG8K5lSpY74xRhoEiJF+xeTnP/VInUaZkged2MgCxAeBCgp6sqs1pC3ihdy8Uf9onWwZLBRb3wliBg0kbgH+kjjaNNNCS8gEExE1K67s/bjaFipJ/jzjK5tJlA792GphU/IrKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VopjkW3L; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VopjkW3L"
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-60867565fb5so2277311a12.3
        for <keys@linux.kernel.org>; Thu, 12 Jun 2025 13:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749760752; x=1750365552; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VKmCYjXDaxdBlDwlnjsvgmGpREnH5bZKvxm977AZC78=;
        b=VopjkW3LZ1OZiBwSwsck3xHlM2MC3SpyV9rTrnHPRzk23feyeX6fs/U+0QCUojOcLp
         2p8Qs8lpBiRVV7zebz750iTapSV/XoA0n9f8GkYdPlet3GZsovdXzSqFOvPbITzL8Thf
         hqX0JVb1kt+LNkyT/LhAbGqE1MURZBgRYb8o7xHRtlEhX4V4VL4xKWAYePcNJN98MEiY
         +v1z2iz3L6bspscUZaFdjrZzgcknuKHCWmipcaxSfbL71mpcrOfD3Q8VHMC86/yOvU5q
         c9LXxLz6gEZY+Fo90w2eaDrC1QVKGFGhuOQ+LuTf1dyjGMs747BvBj0/M3CVXpn7KxkY
         aWlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749760752; x=1750365552;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VKmCYjXDaxdBlDwlnjsvgmGpREnH5bZKvxm977AZC78=;
        b=uNQesy5cRJg2Bviw82j3kV4XN2tgVKZ1HjptvP0P/p9xxiV23RYUWpxi0VQWT3F7b3
         asYoF0qB6AIeWmJk32lAHI8itGROWaSw5jQvrEqptegC/UmyvGEskHa3pmPfsaolrKYg
         bunju9ijDAG1gdWS96QASIwiwt4PcOUMBYD9Np/B2oNN1n9wO/QPf+QGXaBQT6WJzQqb
         oFpIYIqHymQtgVoOijz/zaq4+1ZUaciOgoYAjewYFL4WZMDXZ6AajyQNy0huS1jRHh95
         Gds9kgqzWK4ahV59620SBr0xf8jfMA5IWTrNQFDl7iHcLAJQsIjZHIuy4Z2a7gpd+oze
         QW5w==
X-Gm-Message-State: AOJu0Yx1WyXsVNTEjQ6iQs3Er3sazsUl5Fcqjt5lAYZcXuRN78Dtvwr+
	Q9e+EhxEwUSFayRd0MT+2Y0Mm+gIxbQicZ41H7AvCRafsMFAYT5/vgyW7GlYWRFt8eTtnC5IbD/
	ho85F
X-Gm-Gg: ASbGncubgg9V5eD05XFVbZgxO08Oa8MQ0K3lPFbMTnN576d5cOO21e0XQjQMYqf+BmV
	2ma0PNTFwjUKnx6e4iTl0ZO2yBOiu+m9aAeL0qao/q6RhIacU1sKX0ZO7DlBFQ/pYmFbjwqXHUV
	eAcGjF7X0l7K/FEORVbAzYA+PDtQc8tG+P1Yu+wDpUlidhLmWCxEUI8/m67LaT9iXV2VCbE4qCl
	5Orch0M8Q0JvKhpq2TPJiW19JNnQLIPLDGnw2fnbaEqGZZPtQPXiAj49TsHCp2XQ3qu5pcdvHp7
	DijVgGlfFrIWIPZhQAWwWXH1gitxkDrK/xi84w/rTNavBF5pieiRpg7c5HBg8Aw0ssmZKOhy0dG
	V1A==
X-Google-Smtp-Source: AGHT+IHimtuJvr0aZ2B0N8XHeDELEj+z1MvFBnjHqPJgZYjIrJJvAdwl9RQkltzHkV8T3duppSxtHQ==
X-Received: by 2002:a05:6402:2694:b0:606:cef8:a028 with SMTP id 4fb4d7f45d1cf-608b49d9516mr285114a12.22.1749760752355;
        Thu, 12 Jun 2025 13:39:12 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-608b4adf014sm149146a12.71.2025.06.12.13.39.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 13:39:11 -0700 (PDT)
Date: Thu, 12 Jun 2025 22:39:06 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Vineet Gupta <vgupta@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Please add key for Vineet Gupta (ARC maintainer)
Message-ID: <ft3kdxdnwnj5u4drrl2rtgbir4zzpl6woky34drik4n3wrqoz3@npljuav53pxe>
References: <b4bad496-3b0e-4925-bdf5-4368180fcf9b@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2yzhiqtobmjt5v3s"
Content-Disposition: inline
In-Reply-To: <b4bad496-3b0e-4925-bdf5-4368180fcf9b@kernel.org>


--2yzhiqtobmjt5v3s
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: Please add key for Vineet Gupta (ARC maintainer)
MIME-Version: 1.0

Hello Vineet,

your UID is "Vineet Gupta (kernel) <vgupta@kernel.org>" on that key.

Before creating your next UID is suggest you read
https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-harmful.html
.

Best regards
Uwe

--2yzhiqtobmjt5v3s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmhLOucACgkQj4D7WH0S
/k7kcgf/Y1E9oMqES37QJksOylBnhFlKV0WEtVz6TzcTEk/DZMcoE1gDqQ9CVdPQ
H/jPH1bjMNQBDRvQpebA8rmc/icZqu8HpVDGcCJVHaqLtecFxnG/ap5FrtFjU61+
aL4lteg4i4qpl1X8n4b4Dd42DTxhzXeKZSOZ6qar4C06GpSL3kJmOOwVJNLGVNMa
dI5SMRfPG+HgGbgIVDjZYPXuTNgMWyK2lnV1XpKvUsbYzLZ+9xX9lWVImlzns2yu
k9I7R6cuC+FplvhZQZqYOXqcq7Xx16wcUX42P25ZPEnquRvviZ4Jv4JWqR8drnVz
HePxsVLR4zELgICl3VOcc+za4VEdLw==
=yDMK
-----END PGP SIGNATURE-----

--2yzhiqtobmjt5v3s--
