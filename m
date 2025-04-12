Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A23645
	for <keys@linux.kernel.org>; Sat, 12 Apr 2025 06:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744440452; cv=none; b=HNGlxX3+j+Dw0ZKdoos7iZ7MhSR3hNCZebkhjgd6SlzTgizorW0GiZ/1xJJPtMNdKtsFC5jWY5PBRAu8T7SSqNb6wgbaxSr+1ngBR3HpW+CDHF73V5ZeB/0xb7aN64biAaCvCdELzSAKIpMEJhiZy7eAWYebZX7ZLDfwojOiUaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744440452; c=relaxed/simple;
	bh=2OZx0aXgtKwteM6bxK5jKbenjEMRssJQFmUEXVfo2Nc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hqu1ZqEM1TdRhWVampjhhtLZgDtoCb2465ELWgX2SElteSGHPgmbWOcxfSpVKh++2lcn/mEvtkGLKYK5zmKre3jO3XrMu3L8xvsH0+GTE6e970XBMLm9YC6nhWEdxL7NP5Kuzmki1ujcrFFxFn1/JIesPojLDITOJ1xZv9mF9HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ytyswqVl; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ytyswqVl"
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5ec9d24acfbso6609230a12.0
        for <keys@linux.kernel.org>; Fri, 11 Apr 2025 23:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744440447; x=1745045247; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KXqrUfy+z4y3+uH50WCXkOvZ//+cWdciAudY1ddRXqM=;
        b=ytyswqVlaaIOREq9thI1zwQgWOBGmhJJ7+O6bqiMrxQP2omwqpcm01ZKCj8ThDkdGy
         KkNkHFPzG0lDFLbP09i163ooZcXtgy36S12V3ZNIYkZCud3rwbCrthDQR9xqYr579yg5
         6IDYlrvE9I4wNkD5uMcEgkuT1FegqFLG4lGexF7/SBSs3GPsm6s09N1C84PfwluNZqAN
         AzZ4C9cU5AQ+txscBUPfl5XLxRmykNwbZcybs3NdrWH52kJ233qXck0DCV5uJJUY3HYH
         JfI/ER2wk02PHE+dcz0pWa/dEwpaoAoegGJj11xAadhgPkDWio8kxKUNnV0Bs7rKnOye
         IT3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744440447; x=1745045247;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KXqrUfy+z4y3+uH50WCXkOvZ//+cWdciAudY1ddRXqM=;
        b=PfUyscCjfd44exWe36JobpLfYWI2Q+XS8PDrajrJrKvuRfFZPIZOIuX4tVS2mkEikJ
         X408zUr3NjLkENF10qHfQ1B9gJIcid6uhD4wy2CRVHik2Bf8KQg5IBHZHEcwxD7nWHa3
         c7x7GsNS2xwMnNCbX1mp4Il2NYllk1SeVBdLdHUSCsFg9eSdyp4YZUUSA48bbDhxcGUo
         cLdpltpZhUFN+iDen7beSo0R5OtULGQDNk+cWXMqsUROQqjBetvGIP0i5GhE7tdl5LHQ
         d41UTxOBciqTV9MKo9p/KT3bOnalEKDSqmWOJ3YoWBTGqQNq04gSUEXLbMLK134EkSaT
         x+HA==
X-Forwarded-Encrypted: i=1; AJvYcCUneAOttiDgLL0WS7ntbeW4Sli6q1FU4tDvvlRLO9rb1g1nRfzFWjZpatACAsSikdeGnJfG@linux.kernel.org
X-Gm-Message-State: AOJu0YxnTZQ9SimDRhGuYLFY4Mpzx+o1bnvNe1dxsdfzgBngv2d25VOJ
	2o1sgI1LqglqTdAvNGixZ/0WuZ+aRiEWpCNKjQABtQIE82eW6szuhpyY1WNOGNSzjmkR7bQvfGt
	R
X-Gm-Gg: ASbGncuuYaI/U9l6tTPLToSNHSHLAgdJeJ/B+sjjiiWZn5UJYXk9rTldWAFwmMdqxMi
	xJXXd6sxHcdAsE8eTH1SQkH+TTPvrJqtknBcbxGnEGPCZTYZoXVwCt641qVkyqigdcMRFnlXOgW
	PfXpig2ILS9/8G53BQ+ldVKbtvFzrkzy4jePVhVonuCYLCchEiAhCBfVwZnwbKAyqrEbHB06b/a
	WRIESPvNJo2+HbQdDbqMW1jUZFQ59BT1MmIp/RKmXj/5RymeMlQm8GUAZKGD2L+xCnbfBJ54HF+
	MPlQVHQyKdxXz17Nv95oNXqAYf0aa+7wdEsvN432PMIarA==
X-Google-Smtp-Source: AGHT+IGztfh8mZu400vQ0WYNz7t8AjzzUHXO9lsVmSExqtetwRHGgJVmXmgYVh21XNoVVBoBZB3jGQ==
X-Received: by 2002:a05:6402:51c7:b0:5db:68bd:ab78 with SMTP id 4fb4d7f45d1cf-5f362fb5495mr4453362a12.10.1744440446349;
        Fri, 11 Apr 2025 23:47:26 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-5f36ee55002sm1837137a12.7.2025.04.11.23.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 23:47:24 -0700 (PDT)
Date: Sat, 12 Apr 2025 08:47:22 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Theodore Ts'o <tytso@mit.edu>
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, 
	keys@linux.kernel.org
Subject: Re: Update key expiration date for tytso@mit.edu
Message-ID: <qt4t3up5kuyfi4hb3wwmgelw44tcupkbr6shlvx5wuyrow6wg6@jhshs4gaeg43>
References: <20250410143455.GA327426@mit.edu>
 <20250410-simple-gregarious-beagle-126b4f@lemur>
 <sgntx3uys3zayto7jczmbmixlvqnlqoi7fdhyrbf5sszg2wjlf@nigvacgc2v52>
 <20250411150153.GB648081@mit.edu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ijhspph435l74abc"
Content-Disposition: inline
In-Reply-To: <20250411150153.GB648081@mit.edu>


--ijhspph435l74abc
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Update key expiration date for tytso@mit.edu
MIME-Version: 1.0

Hello Ted,

On Fri, Apr 11, 2025 at 11:01:53AM -0400, Theodore Ts'o wrote:
> On Thu, Apr 10, 2025 at 05:40:28PM +0200, Uwe Kleine-K=F6nig wrote:
> > On Thu, Apr 10, 2025 at 10:43:14AM -0400, Konstantin Ryabitsev wrote:
> > > On Thu, Apr 10, 2025 at 10:34:55AM -0400, Theodore Ts'o wrote:
> > >=20
> > > Updated, thanks.
> >=20
> > This is rather odd. The commit you created indeed updated the expiry
> > date on the key, but it also dropped lots of signatures. If I repeat
> > importing Theodore's key, the keys are not dropped for me. (And that's
> > even though I use a gpg version that is affected by
> > https://dev.gnupg.org/T7583.)
> >=20
> > The graph before the import was just "Linus -> tytso", now it's
> > https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/graphs/D36=
F769BC11804F0.svg?id=3D3dab90be2abbe5e36edbad698070ff390ea3f886
>=20
> Yeah, that's a ltitle unfortunate, since I was originally one of the
> initial 4 "trusted introducers" when we were setting up the kernel
> keyring.  So dropping the signatures might affect some folks being
> considered trusted by some GPG configs.  I imagine that's much less
> important these days, though....

For someone who already has your key in their local keyring from an
earlier revision of the kernel keyring, the update does the right thing,
i.e. it just updates the expiry date for your key. So this is only an
issue for someone who newly imports your key now.

Also there is no key in the keyring that gets it's trustpath length over
the needed length of 4 due to your change.

Still I think we should fix your import or at least understand the
issue.

Best regards
Uwe

--ijhspph435l74abc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmf6DG0ACgkQj4D7WH0S
/k7ZYQf+Ly5O/dIhfMVDaVyVManhe2YIS96JGGZvFow0vOgwXpPUhbQYp/3uy45M
7CzD8FKpsroo4f5YoqWMeboGq63lGat0ihanicB5TfwXRL8pluzni4qbHtqdT/IW
8oZfuOoAI7c/3Kc9H8HbezwbEsIvF2mcC52k0zRsiM3olUFDN/8FmyKYZ7AX3zjW
/TFjeZggAiKFn8l7UYKmkDNWY7LPY/PZvzLTLpNpL7KtixPzrWGjkNbBQGMBOiHJ
RJIy3Wgl+bJgmIWuuMGt0WCmrIQdVjUaPY0gKR6PFGtECgmyDwOrwbZtXsWYM0cJ
xJinMSZ6KNZ+u95FnLN8CJ4daAI/EA==
=fPVH
-----END PGP SIGNATURE-----

--ijhspph435l74abc--
