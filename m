Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684301D86E8
	for <keys@linux.kernel.org>; Fri, 11 Apr 2025 21:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744406268; cv=none; b=twFoQuK3Y9m9AKXWI8fST5y/Uv1i6ueJLnmSjC/0Qywx2XIHgUAo49fpVm21Beeg51zar2qjDqadrAcEu7ZWThSHJNOCMSuZvVSglcA+2yiFUqrjgbxgi75JxDo1tc//gjAtRexIJBlLN25786aDDZXCR2EHkkDRqcbgUBbYu60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744406268; c=relaxed/simple;
	bh=FYFghvDUqj20ZKDteTWo0Q4i94h9ZXHA6Db0qEUvFB4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ixt4aydxaj8ra/fjmQ49f0BCAPoXvHzvt0VvGvxH5juJRS4/g13lN/OzjIGJyDyB9Le5LRYDZPHo7ANqpz0d1C9pdVsNyeWfeXga0qxVMLH8rwmOODXeH03Oqj+p/4Tn4NDj0HPY2dYeYPH1i6qSJ6YHolnnXDSkHyK6T/xic6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=BvNprTv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="BvNprTv+"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A327AC4CEE2;
	Fri, 11 Apr 2025 21:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1744406265;
	bh=FYFghvDUqj20ZKDteTWo0Q4i94h9ZXHA6Db0qEUvFB4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BvNprTv+iKWKb69zYh3HgafqKjphPMMI47INp7jNmJyPvdpX10gJHi4q3WdJKc+/p
	 bskTamcN+qL5AUWpHta+MYYIh1YkRkwptjLg8Kkdz2vmIHfqCgbPBUtzzK0U4xJC5W
	 jfhg4llhUzEn5wVRni3kS7Lpz/tdaIkSkdu3U/ew=
Date: Fri, 11 Apr 2025 17:17:44 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Theodore Ts'o <tytso@mit.edu>, keys@linux.kernel.org
Subject: Re: Update key expiration date for tytso@mit.edu
Message-ID: <20250411-quantum-kiwi-of-current-2dbcf9@lemur>
References: <20250410143455.GA327426@mit.edu>
 <20250410-simple-gregarious-beagle-126b4f@lemur>
 <sgntx3uys3zayto7jczmbmixlvqnlqoi7fdhyrbf5sszg2wjlf@nigvacgc2v52>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <sgntx3uys3zayto7jczmbmixlvqnlqoi7fdhyrbf5sszg2wjlf@nigvacgc2v52>

On Thu, Apr 10, 2025 at 05:40:28PM +0200, Uwe Kleine-König wrote:
> This is rather odd. The commit you created indeed updated the expiry
> date on the key, but it also dropped lots of signatures. If I repeat
> importing Theodore's key, the keys are not dropped for me. (And that's
> even though I use a gpg version that is affected by
> https://dev.gnupg.org/T7583.)
> 
> The graph before the import was just "Linus -> tytso", now it's
> https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/graphs/D36F769BC11804F0.svg?id=3dab90be2abbe5e36edbad698070ff390ea3f886

Aren't we purposefully dropping "algo 2" (sha1) signatures from the graph? I
expect this is the reason.

	:signature packet: algo 1, keyid 79BE3E4300411886
			version 4, created 1316641796, md5len 0, sigclass 0x10
			digest algo 2, begin of digest 3f ca
			hashed subpkt 2 len 4 (sig created 2011-09-21)
			subpkt 16 len 8 (issuer key ID 79BE3E4300411886)
			data: [2047 bits]

-K
