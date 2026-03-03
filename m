Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E65B43CECD
	for <keys@linux.kernel.org>; Tue,  3 Mar 2026 11:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772537206; cv=none; b=UmfXUgBgjYKwiDsz3zKz5W0JOveTGJ9Gz0zLNl59egooy3lcsp5yGT1wUdCN5vLA7eCWA1PTcf13kT8eOCol7DGIf+XonhqwHLKGvvlcGbrt5gD8RNwjERYpyBzj6cvf3XslScdS7tPYhlYHID9uKq5i3I6lfsqWpUM7AvdJiUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772537206; c=relaxed/simple;
	bh=FWUCe2QNRtJNtLoe6v+UVbBNtHOK3JsA2icXJ7gxvWs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rJAH1NiyoUPzZSYJfVIsdSNgZlRYsmbjl2KD4X4BKKTivmof0l0TUvFW2SOT2QPwKKRrFUMcWMvKc3wzIhyW9K5yTlvG9yxdpxsDmq5Pp7FggfkKraesuwO7KMnGVGPRL/bGj4ZT9fC7nM6EY9i/NEbwQKDhSuSbofOrz8L6ri8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EqVRDIEn; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EqVRDIEn"
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-48371bb515eso84195695e9.1
        for <keys@linux.kernel.org>; Tue, 03 Mar 2026 03:26:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772537200; x=1773142000; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FWUCe2QNRtJNtLoe6v+UVbBNtHOK3JsA2icXJ7gxvWs=;
        b=EqVRDIEnF2CC9kWNCPqB0FZ2F2y0v2gF3L7owx01j0Cl16xud/dwcU2+BNxxUIlp/g
         f9HGS2L6ZtQLbK3E8iR42sJVtLjpsF0SYI4rLugDmmtAWm1zCI2+tTwGUIDe8mYsKjKP
         o9lpiPQJoo2OyGzHhV+bmV7zCY2b3Gg+oBnsz9ThN0jX2fIMqL8o25swHiUFsmI9gmNl
         549JvF4bepYj9ASgVcgMmlsAJaDKMElhOZwE7PtTkvIuk5OMRDVnzJ8yzQY8qsihhB8v
         zZLWdnXLJKRCtDp513eyqY4i0qh/IElo19KLDBAcQKElh4fljiVtJQLj8sxbo7WYuhTy
         z0qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772537200; x=1773142000;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FWUCe2QNRtJNtLoe6v+UVbBNtHOK3JsA2icXJ7gxvWs=;
        b=Eh8I25ZgTYoM/GBH8jYlGUdY8V3IhWm4l1evbt/1MApCfjgdYKBzG8s2ca5kh/3UJV
         Zw1HmRERXdp/v88HDQ2lMH0ca+ZMwh4c6qVqt35gPHw0p+JgBgaeuloRVKURVg7qTent
         vVrfBWVzSZHbIz0VAOx0OUlY24Ws7Lg84yWQChH4dlW6bVT0D75DO+S7zAE9dFDPBOFk
         n0qkt5biPPkMkBCxH2mY7cqKpP8Gu8Ja+4f9OOkXSyzdMVP/UiL0iJOf/SJxPC1rUpWA
         QwXy6dQY9BriM/XPxfeLsc/mq75CnvpIiGYpn0R7nqI4NqhD+LCPt3xcEraenmBcvjoO
         S1eg==
X-Gm-Message-State: AOJu0Yw4Ja5Ag6OVFG6DjSTZw2Gw30mePU7HXZRBIvkvz4prwtf9ogQE
	bQVpFuLd8Yl2S2VBsoKMfvSJk61rqlu5N9A33oQOzCpKZks44N2JW4rjtJsh09pXfzU=
X-Gm-Gg: ATEYQzwEfg/QTGqGllbPONE6nVVKvEIZ3k1uoBT7BjARJQ3r7vX1jGKINs8hGZ/g+1N
	4QhNTuUGLv+CEXS38JuEfwzukp2tX6iOqYNrW3KsR4CZZFz8WrdA4HhRkRgadpxJS6r8K7+rMnl
	f+S+2+PswFBRT/ciH415TzOStTGq38KGBnz2cAoLzreSj75bWB3n4oSlvCf9ILgGCZAfXFLvX3e
	aBIop9JlLnjTp4Ptx+L4d+lly9aZaZd08sYy1uq/XBbnzl4/5CF71nKwDXixX3Gxy7o22rlFS8c
	mf6oEHrodVtvdrJB5NYfao1MeO9NfkQhJYknTv6v9xkNDH0OvK36jHRyklK/9hw6yECAtzdPQIO
	x6HwTi4Ho/FLHNlPEUZLb8hgN04y3horANh8qQ5Z3eGtNnr8TEFmooM5ZwVOjeW6o0+ryhQsRD2
	CXxg7MnqQz+y+gpUDqjSBnalHlOTeH8BGMBumpWRY1pzWMr2+TWS9/tqeAZsnyIkcbdKTfIyRHJ
	KAL3t/bR1ZYa9rBx/gZZfj8mQ==
X-Received: by 2002:a05:600c:c4a6:b0:483:71f7:2782 with SMTP id 5b1f17b1804b1-483c9bc18acmr262159825e9.12.1772537200235;
        Tue, 03 Mar 2026 03:26:40 -0800 (PST)
Received: from localhost (p200300f65f20eb04c719f823a204d9d8.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:c719:f823:a204:d9d8])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-48512628e2asm35490615e9.1.2026.03.03.03.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 03:26:39 -0800 (PST)
Date: Tue, 3 Mar 2026 12:26:38 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Chen Wang <chen.wang@linux.dev>
Cc: keys@linux.kernel.org, unicorn_wang@outlook.com
Subject: Re: Key for Chen Wang
Message-ID: <aabE9BHhSwZumAHi@monoceros>
References: <c08e120f-d3e2-4ea7-aef1-6ac0f71349f6@linux.dev>
 <c08e120f-d3e2-4ea7-aef1-6ac0f71349f6@linux.dev>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hczdjg3rivjihomg"
Content-Disposition: inline
In-Reply-To: <c08e120f-d3e2-4ea7-aef1-6ac0f71349f6@linux.dev>
 <c08e120f-d3e2-4ea7-aef1-6ac0f71349f6@linux.dev>


--hczdjg3rivjihomg
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: Key for Chen Wang
MIME-Version: 1.0

Hello Chen,

On Tue, Mar 03, 2026 at 05:41:57PM +0800, Chen Wang wrote:
> I'm sending my PGP key for Linux dev/PR work. Please see attachment.

the key is technically fine, however I recommend reading through
https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-harmful.html
as you're using the user id comment field.

Best regards
Uwe

--hczdjg3rivjihomg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmmmxWsACgkQj4D7WH0S
/k4EcAf/Ru8hV4LIpACw9Eek2+u/TTQWWZ395G60Gi4YLUCt7bIO5GL2bmYkZ8AI
d2r7TYb6aqIZdi06bPpxiHlRira2TFNnNGE/QUBWledr63k1TI/PfkyhxQDpKlCk
ZC1TAcXp/JSmhKTz/IVg7OM9Q3IXnZRheiXlo9Pr+MtorSEXGp/1nAkzBo1cAkii
XtyVGUFWqQ6OIQN8Il4cy1KzcSKIZj+SD73YR2tZrUPEJL47IdbAbG0QHlLB+L3C
JrqumVSxyFm0iBiaB6lprmPG7+I0klVceCQ7F+6MNLa0f8604jesz6yCRQbunJf9
EFthEW+jv0fuUfOh5gSB6Df0jvrCuw==
=F1tq
-----END PGP SIGNATURE-----

--hczdjg3rivjihomg--
