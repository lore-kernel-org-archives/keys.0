Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3BC45C14
	for <keys@linux.kernel.org>; Tue,  5 Aug 2025 15:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754406615; cv=none; b=ZXi8P6ym+EAhETG2jpEEHd4GSqJzC1XXb2kyto5cRswYPh+1Fi7ak+XR3PT+wRwrfi9bz+iMc/GVtA08QBoVzVdAlIhi+wDkbZW9YisaOAWDbJjuE8eczPn4668d/XLKS3pIMNPDY+/5YiOSe4Aw0l9GtHynFm1r4vht4GWBGds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754406615; c=relaxed/simple;
	bh=Z3evfeA6rP9GStJihdzt0ygNL021756iWgGmGNSDg1I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o9LomHXKfB2bw8K+n68K7S4B0730Yzfvz7JrZcnz7mPjgHz01ZC3P6tfHaoXiAaBW9+4FG7O1pJ1NEDAytZ+yfFPf4O9vvr1WXjdCqBbD/M3KtXE2m3uv8feXUOR5KEHZqTw9mpZkcKSoDLyHxUh6X/Oo5INwokR3p3fQGphv1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=V0im1zBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="V0im1zBu"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 830BCC4CEF0;
	Tue,  5 Aug 2025 15:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1754406614;
	bh=Z3evfeA6rP9GStJihdzt0ygNL021756iWgGmGNSDg1I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V0im1zBuYE6IYf2phDZrow+2ilKHqkVO1PDjb3wcm07JJJBqtNElDhwoKBP9CxNSe
	 LYbY8kYm0B6nuuCBPP02uosVetWwrXlYDFe2koTV0Nj977K7ZNVUil2/61xRtD5Z/L
	 aLEiIXWxSnE4xn7Gxv+AScNRT1XBIQ7lZmu3XWUc=
Date: Tue, 5 Aug 2025 11:10:13 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org, Kieran Bingham <kieranbingham@gmail.com>, 
	Kieran Bingham <kieran@bingham.xyz>, Kieran Bingham <kieran@kbingham.co.uk>, 
	Imre Kaloz <kaloz@dune.hu>, Imre Kaloz <kaloz@openwrt.org>, 
	Eric Dumazet <edumazet@google.com>, Eric Dumazet <eric.dumazet@gmail.com>, 
	Eric Dumazet <edumazet@kernel.org>, Pravin B Shelar <pshelar@nicira.com>, 
	Allison Henderson <allison.henderson@oracle.com>, Joel Granados <joel.granados@kernel.org>, 
	Joel Granados <joel.granados@joelgranados.com>, Joel Granados <j.granados@samsung.com>, 
	Harald Hoyer <harald@hoyer.xyz>, Harald Hoyer <harald@harald-hoyer.de>, 
	Harald Hoyer <harald@redhat.com>, Bothersome Borer <bothersome-borer@kernel.org>, 
	Confounding Cockroach <confounding-cockroach@kernel.org>, Frank Rowand <frank.rowand@sony.com>, 
	Frank Rowand <key_111017@frowand.com>, Frank Rowand <frank.rowand@am.sony.com>, 
	Frank Rowand <frowand@gmail.com>, Frank Rowand <frank.rowand@sonymobile.com>, 
	Frank Rowand <frowand.list@gmail.com>, Frank Rowand <frank@frowand.com>, 
	Jacek Anaszewski <jacek.anaszewski@gmail.com>, Jacek Anaszewski <j.anaszewski@samsung.com>, 
	Aggravating Aphid <aggravating-aphid@kernel.org>
Subject: Re: [PATCH 0/7] Remove expired keys, 2024 edition
Message-ID: <20250805-caped-jovial-limpet-ce9baa@lemur>
References: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1754379198.git.u.kleine-koenig@baylibre.com>

On Tue, Aug 05, 2025 at 09:59:01AM +0200, Uwe Kleine-König wrote:
> Hello,
> 
> this cleanup series removes 5 keys and one subkey that expired in 2024.
> Also a key that was revoked in 2020 is dropped.

Thanks for doing this work.

> None of the removed keys is part of trust paths to other keys, so there
> is no effect on the remaining keys.
> 
> I suggest to not apply this series straight away to give the affected
> owners the chance to extend the expiry date of their keys and replace
> them accordingly.

I agree, I will wait for at least a week before I act on this series.

> A bit orthogonal to this series: It is usually recommended to have an
> expiry date on PGP keys. Most keys (472 of now 620) don't have an expiry
> date, I wonder if that would be sensible to require at least for new
> keys added to the keyring. The upside would be that we don't trust keys
> that are already long abondoned. E.g. Gentoo requires that for the keys
> that are relevant for the project[1].

I don't really feel strongly one way or another (clearly, since I don't have
an expiration date on my own key either :)). From my perspective, the
hassle of dealing with expired keys outweighs the security benefits this
feature offers.

-K
