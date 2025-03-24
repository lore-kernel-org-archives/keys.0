Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3815B17E0
	for <keys@linux.kernel.org>; Mon, 24 Mar 2025 20:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742848080; cv=none; b=ebTTFJApLUSsQzjMBDwAsEw+C2lxX1QOecXZ3G5/aMP8Ria5TD1Yco0XN0Z+XZB6ih3H4DQRtgUSLjtEliA+mPK9Rl62agbRRzfVqNDV/GWpxKtNf3hXzLMxtHve/ArMfb3fNGnE0lq3BweOcuLaCBcPo92j7FMdoT4bnq7rILk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742848080; c=relaxed/simple;
	bh=57jLRnkqxqht3PnvSnulboLrCSP/Yi525D++B5JCThU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wgt56JSMvRgYGRso6CJ3H5dOFkCTCqco97ahJRPn7jdEvXy4CWGB9TkjyTxWagxxUr0q33dZQ/FsZx8Ij1i8XMsP5WcD+MdC5G8mGdOsMjPRUVaxzE8/Vh2eMaU/9Lu1Ogb10sR1x1ut4+cPGRyBAnKwsIA6wqPWV98DJoa779g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=yDVUhbrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="yDVUhbrq"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EB45C4CEDD;
	Mon, 24 Mar 2025 20:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1742848078;
	bh=57jLRnkqxqht3PnvSnulboLrCSP/Yi525D++B5JCThU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yDVUhbrqBKBryJFoW8eqiXwPUUAId+p2TMZC2Rjohg91jjxeh8hMnfq5Fm3ya6OnO
	 R23/rCdE5qp20/6tekegJm61jv2+vdlxZczCJI8JN21sYGR6QZCQCH9tkGk5ZPL8pZ
	 t6HZRhUYteA56C/cPC8EnOSuG8pciRKv50c6pYqw=
Date: Mon, 24 Mar 2025 16:27:57 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: Keys using SHA-1 in the kernel keyring
Message-ID: <20250324-crouching-charcoal-agouti-d33ff5@lemur>
References: <c7klbj6xvzcfx63gid5iancjg6cv4krgm2wk6wfijwebq7bxtr@songleund4fm>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c7klbj6xvzcfx63gid5iancjg6cv4krgm2wk6wfijwebq7bxtr@songleund4fm>

On Fri, Feb 07, 2025 at 06:09:40PM +0100, Uwe Kleine-König wrote:
> Fixing is as easy as:
> 
>        sq key export --cert DE0E66E32F1FDD0902666B96E63EDCA9329DD07E |
>                 sq cert lint --fix --cert-file=- |
>                 sq cert import

So, I was able to do it in the end using a series of --quick-set-primary-uid
commands. I've updated my own key, which I believe should make the linter
happy. I've also asked the gnupg list what is a better way to go about it, so
hopefully this will either result in someone pointing out the obvious solution
that I've overlooked, or implement one.

-K
