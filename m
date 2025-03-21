Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660911DEFF3
	for <keys@linux.kernel.org>; Fri, 21 Mar 2025 19:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742584848; cv=none; b=c1VAb/6M1RUTFDU7Xjvo+KA2cVMUhB6F21Z1JFuHhKtJzy3Tk53Zkao8hECsIDABtyOiTn+Yiq8WmwKxxnzfFYGOwVEZWsIZ9AkFo07zvZQIRBOTjOS4w1JNqr94nbxrZJP065inZA/FN/rcpBOJnMF6gFJtXH1g9hY+ENeLYLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742584848; c=relaxed/simple;
	bh=Zgz4BGqm6ztT1ziZVuXX8gf23gEmIuKpBXHyR0e2h/c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mBwHfwjd6aIQfVkcFcbU0Iom+UKb6TrmnLQON9Vz5ZXxDiMTKK3hl8D6fx8QbBCZ097GirQJo3ITU3VoJZshFQbzWdIoPFUkhcUKi1txzZAzmEW9GqhKVzR/LPPYVwCMHByNpCsjbREbuOe3Mx1f2RiSGCXNpA8v236+cWwJHDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=NuOEf1wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="NuOEf1wz"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8B10C4CEE3;
	Fri, 21 Mar 2025 19:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1742584847;
	bh=Zgz4BGqm6ztT1ziZVuXX8gf23gEmIuKpBXHyR0e2h/c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NuOEf1wzmFWqzT+XMUz7e7Uf2iWQAnvrb2yA7WusAWDoweDRVoA8DfFtQ2bNeZ8ku
	 xe8+mIgUxc24SR8YhEfR5ZdtfXDd6kfdxyKDxI8ZXOS//WZSIsUg9LtGlKcFctQUKw
	 fa7oXWjgUGskOOKcwy3szhUNVTT9UU31vbRe4+VM=
Date: Fri, 21 Mar 2025 15:20:44 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: Keys using SHA-1 in the kernel keyring
Message-ID: <20250321-cordial-panther-of-chemistry-0e46ad@lemur>
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
> Given that fixing is so easy and SHA-1 is broken since 20 years, at
> least getting the high profile users who regularly sign archives (or
> keyring commits :-) looks beneficial to me.

My general concern about this is two-fold:

1. What is the actual attack scenario where this could be abused? I know you
   pointed out that Linus and Greg have sha1 certificates, but they are either
   on UIDs or on their E subkeys, which they don't use for signing. Both of
   them have [SC] keys, so I don't believe the following case wouldn't really
   apply:

   > (You could even argue that the old archives should get resigned, but I'd
   > already be happy if future signatures will be fixed.)

   Since they aren't signed by subkeys but by main [SC] keys, I don't believe
   anything would be gained by resigning the old archives.

2. The second concern is the fact that we're changing keys for Linus and Greg,
   and just the fact that their keys will have obscure changes may create a
   negative impact of its own from the social engineering perspective. If
   someone sees that Linus's key has changed, but after they pull in the
   update there is no visible change to the key in the keyring is going to
   cause confusion.

3. Third concern is more of an aside that Linus hates PGP and getting him to
   do anything with his keys is usually an endeavour. :)

-K
