Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DDD2D73A1
	for <keys@linux.kernel.org>; Tue, 13 Oct 2026 05:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791869825; cv=none; b=IXY6lkVvqS40UnlW6rEyfy2M/XNQAqd3wnRzcHCiNxJCZtzD8NWmVYdo3Aceyd29LsDhJGvcCNg5eR+eC7ZS6c6YyJT4ks1XipIg7yH0tWQcv2/uBSj0itrcmbGH0CnOyDelCW26YVv0HYgMpLwvbuiWYkQsu1lZnuP/9X6lSkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791869825; c=relaxed/simple;
	bh=9cgSATi2EJ2R7nQqxwe5XsZfWLsfZC1Wl+VusRWASso=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JUAH4sutq37PtFPyLaD7zJ0PYuAPA/AwP1iKTtWahMMIMExUHcpVykH9Cs1MocBzX6G2WFv7T7eiixBb/0RUC0hby5y+eK6q8AYUrVMflNapzRC9GYIVlUoGPx4uo5bk8xWzh7CUo1bFYzp3gerSwHs2R9DMSbBoXz+BgVOYqB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=pBKX24s/; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="pBKX24s/"
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4a018dc1f98so19804705e9.3
        for <keys@linux.kernel.org>; Mon, 12 Oct 2026 22:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1791869821; x=1792474621; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=9cgSATi2EJ2R7nQqxwe5XsZfWLsfZC1Wl+VusRWASso=;
        b=pBKX24s/4nWEJUI7wgBwRojARkBsSsvkhHJ5eNfl8mSvPrgeS1P+J0ISHo5PNHzqUL
         ZmuWltEbT9ppBK+xeya4StDkPLvf6KlKQOzxGlpg2DIVaxaxxg6wzkg/PG61PS5DajQf
         QhwjI3nhgM+ANN2qyLMvKZPsR0SI3fuM9XQWhwbAC3EonJx8+37HPqlj8AFl1AWPBKfo
         W/eeucaBEQfEo9VM2e/jxJNvWWyoBjM5QagmTDYajFBL9aDheAh4LY9iVCaJJmCTtfJ0
         3+TquR6EP5GbxLWUDU4s8HoYLw+uM1/lXtLVOl7rmE1pZNICOo79l4GwUnYKq1ZoiysN
         zWiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791869821; x=1792474621;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9cgSATi2EJ2R7nQqxwe5XsZfWLsfZC1Wl+VusRWASso=;
        b=VRbWXf8gccE8k4KnNmQXJQY8dveprMIfY5JjhoM1sfOydJuyRDUa9c5fPl6fRkYbeb
         QkZFwgkHXP6Quw6PxUOF9G6+Wq7PN4LL9mNHWd/mnAO2TwJMnjZY79p0I7P2EIQWJArV
         zoIif4apDwXLE2xzLPnRhzeE7ypTh4VC9sP4jyoOJZpNUoUbsvThEViiNm/sn6qEdT/d
         8wpvAfA+lzSrf02MgRdlQbO0cHVjz2LPA4GJf4BVzeBjHNqGyzYmStmS9D1tx/bag/Eb
         ydjCrfB1bc8R0TB8xAQU7lPpCfQw4khiK6pecz9h2pvACIS3IpD6Cv2pvE1ANads4nf8
         ey7w==
X-Gm-Message-State: AFq9FYKiRyVViyiSk7iEzQ69vPvkhSzQdkGf8xs4eN6L5B+UuclalvbH
	4yOm7RLGs5JoT1SlMWYx1GWh9pISm7uOdvQkaLP42IapgERrvLlXzY0iWrQmWcjRwuA=
X-Gm-Gg: AYBFou09cipmg5dxiuKCLWZb+qYHvYv3Sh4YMzjZx2888mWoLi/fjICFvenUqGJ74JJ
	gyMSiF8aqctm9dVk9xDABjE/6W3ky5tztsQRwaarKiFuXoxnU1x6NuqxF9YYrqofWk0yduyQ9Qs
	VuXoH9a49Mfw9bQcgA/SHmd1XwGb9gu1K21KBPWYh7bZWKg2KWmAjMUvCyDtmAbYlfZCXiIRtL9
	CpaE/rHiUl4JLB8CmcOKAxvFJBRAsn5deqBCIrGds/uMtSjbH/QnAV7KhECYvfvFk5nWM4C9r6j
	/I1FdIsiZcPFCs3QwpkvAlxlcUDbDJKIG+arU1+UqkIlKamaB5gdDuFvTbqjlcmyvNRtjZeRkbe
	L93nTeVzBWRHdzDv9rNjo2WE1OX4pDyW9ofpT+7QInAEKLnumkOuGVVYXUWfWm9IsWOSE6Zz8zs
	B9zAQp9EDnN+Y/ce8BqkUBeVtGTr2Ey173vTyzK6T/eQVEs+Gn/QtxchxJ1Wy7084AlRc7rlf5d
	SY6
X-Received: by 2002:a05:600c:310b:b0:4a1:813f:2a5b with SMTP id 5b1f17b1804b1-4a18e4a9da8mr207997075e9.14.1791869821264;
        Mon, 12 Oct 2026 22:37:01 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4a1ae0c9fadsm25008505e9.4.2026.10.12.22.37.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 22:37:00 -0700 (PDT)
Date: Tue, 13 Oct 2026 07:36:58 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Mark Brown <broonie@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for me
Message-ID: <as3BnOFlaS4SCrVY@monoceros>
References: <31c98cd5-bea4-428c-950f-d38a43709245@sirena.org.uk>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zsfqvllundinghib"
Content-Disposition: inline
In-Reply-To: <31c98cd5-bea4-428c-950f-d38a43709245@sirena.org.uk>


--zsfqvllundinghib
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: Updated key for me
MIME-Version: 1.0

On Thu, Oct 01, 2026 at 04:05:29PM +0100, Mark Brown wrote:
> Attached as per https://korg.docs.kernel.org/pgpkeys.html.

The attachment contains two certificates. A dsa1024 one from 1998 and an
rsa4096 from 2011. I guess only the second was intended? But that also
has (pre-existing) SHA1 issues, according to `sq cert lint`:

Certificate C3F436CA30F5D8EB, key DD6A5FE57B78DB59 uses a SHA-1-protected binding signature.

Would be great if you fixed that. If you don't know how, I'm glad to
help.

Other than that, there are a few new signatures for C3F436CA30F5D8EB, a
revoked UID and two new subkeys.

Best regards
Uwe

--zsfqvllundinghib
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrNw3gACgkQj4D7WH0S
/k4JQAf/RDLF6jmmTOTpNdrB6VJ28POxqKRD8iNe/88jyKsfz4sQT/5kYspfUKUP
X3PBG1eQNJVJC+zOe9JpX8ZFzsP2re/S0wKOq6p99YzXpFs0jaJMUOT74UOaonc5
vNeSm+KqRdgy1QZjbriRei4Nzy0QBH/tmKlcp7hQHH/bAxNK2Os/KF6I0yHDAPtq
4qRmAcxIb0zn5c8ZNA4ufEeitq1vhNAiOCQ3bYGFqkCfn4mzgxpmOStT9g4n4L/D
mJhteDzBacXoi/6w+klBgCHlqGjthtbzNqbt+ms+M5guNQJAq0IjmoiU1R25WIIG
Vr9a95Prro9y7zgqIUuH87TAu5AMEw==
=Y7q6
-----END PGP SIGNATURE-----

--zsfqvllundinghib--
