Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A872D0C98
	for <keys@linux.kernel.org>; Fri, 13 Feb 2026 21:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771018691; cv=none; b=NwFOQu8F7YQTVryHxqFJV1Em/u6gOqmDNlc4eT6kRkTPvDuld4pNdhQFLLxTvz9RRBQ5nLfc27/Hi5HIkDokOZ0Nz/VOVFPMK1vKTRQq+SnxxTe1+WlghA4aJ24MN0OsKN0l+6FKtlKIECpIe2PL4QwNCWgQh3+OvuzBoATrPJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771018691; c=relaxed/simple;
	bh=Wj8e9h+MycH+pkn0hfdkBJAa4OBLT8aPU0Jv5z30KzM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aCXL3x+z8QjcK7BD3vucWy5SItXvqfT9np1R/6KTocX0KLk6QcCaNOANMYtGfPK3yArumk6WGyWtnyyvrFa5CxhY1kbTYGa+4yuoNpXzWj8NAA7iC1s+n4DviaArN7bUHNaspHiPLXNmthxuqJ+oxSai5CDMgfObOW1CFBpvv9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTVPFJXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTVPFJXA"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0ED8CC116C6;
	Fri, 13 Feb 2026 21:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771018690;
	bh=Wj8e9h+MycH+pkn0hfdkBJAa4OBLT8aPU0Jv5z30KzM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TTVPFJXAGuFChmVC8e4/12IlGhgz/t7nhQbQ82PZXG/Dj7Fr2unFQmoBLm/wqAONT
	 VTQQvmYPojCnuodPNITBkm4HNqLKrWn4ZZ/QXticJtXSGmXMUZpb0MmybTg0Vc+uOv
	 NcTRTV4/GGl4+SewyuArn39RcR6OqgO90OU1brelcZ9JbosZL/v/9jKVffE4DnYxuN
	 m79pIymhqW7aOfO8AZMEqEXoSBL7GS8AO6gmafNCdzko77fmMA6VdGAS3tmMdeUV4s
	 +04aIU1UNRqVLjUiH62LKlKvD6c+ZeludE7JqujICfENjbRohRfwK2I+cV14HtIPbw
	 lFIcMkbHizEnA==
Date: Fri, 13 Feb 2026 16:38:06 -0500
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Seth Forshee <sforshee@kernel.org>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	keys@linux.kernel.org
Subject: Re: key AB4800A62DB9F73A (Seth Forshee) expired
Message-ID: <20260213-magic-rare-termite-bb1cb4@lemur>
References: <6vz6qlpdzoueoigolgs2x6i6mpg6wpa3hos34feiu6n4bnvc5d@syix5qqdbmn6>
 <aYIQdlikYqHwps3I@do-x1carbon>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aYIQdlikYqHwps3I@do-x1carbon>

On Tue, Feb 03, 2026 at 09:12:54AM -0600, Seth Forshee wrote:
> > this is a quick FYI that your PGP certificate AB4800A62DB9F73A in the
> > version that is tracked in
> > https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/tree/keys/AB4800A62DB9F73A.asc
> > expired earlier this month.
> > 
> > If you don't use this key for kernel work any more, please let us know.
> > Otherwise I suggest to expand the key's expiry date by doing e.g.:
> > 
> > 	gpg --quick-set-expire 2ABCA7498D83E1D32D51D3B5AB4800A62DB9F73A 2y
> > 	gpg --keyserver hkps://keys.openpgp.org/ --send-key 2ABCA7498D83E1D32D51D3B5AB4800A62DB9F73A
> > 
> > to extend the expiry by 2 years.
> 
> Ah, I guess I forgot to put a reminder on my calendar. I'll get it
> updated. Thanks for the heads up!

Hello!

Note that it's still expired. 

Best regards,
-- 
KR
