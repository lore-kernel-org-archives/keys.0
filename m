Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD07D28688C
	for <keys@linux.kernel.org>; Fri, 13 Feb 2026 21:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771019225; cv=none; b=oaZItIvbN+DY8hOGHafK/XR6w+s5Koq6C1b4oLkdWEOLgZ5npmgfc2wdHJab26DKQCRBqAoUEWo2qODCvU+SXFU9PMIE9svElgQA38VnCqxOPMJ6WdQYvgdtq0QImn8N/Y/zL8AgLpzZ1KJbTfvyqr0F0hm6yPhteAY6921Am9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771019225; c=relaxed/simple;
	bh=j79Xdju7wDQ8s5pxQWw1dMT3tGMsBrBxfDBGfHNX7U8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QVu8UDS4E3vVyUlAj2TO12HyB7KtV2g5Mw0vRS3Ss4h3KhwwDSqtATKfQVEDXXxnJqiiPhpjtWSa2htXjDeq7gkmJngDM/8f0DTRVTtH8Whib/Avme3cJIRzqCZjA4OeSD/dRHsJSl1CgSJUqZwcYcEEhWlvdsJ+MXO4Vu4fphY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ji42H9MX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ji42H9MX"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E12B8C116C6;
	Fri, 13 Feb 2026 21:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771019225;
	bh=j79Xdju7wDQ8s5pxQWw1dMT3tGMsBrBxfDBGfHNX7U8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ji42H9MX0Lbp3vfajDJkTjP+s2vjWuT+AKh6ghzPs5dqOkedOfZX6CreTS7rTWrE8
	 BTFcSSQj3IPUNvzzrwWVWlTA1PbfgblqWyqLII5UUlgGf1IG9NbPHM+NyB1HXR26/U
	 dOQncwhjhbLbdrqrG7+f9LPH+5PiS1JE1uhNSwe8DrMtSrdZBHqXiTU47u2eLQ8AV5
	 fsCVFn270FFQGSQtevmagIHyQ6FvdA6CS8hgeTbm1CAtz492fVFsJOYF9pJAHCefqv
	 9KS5HodE/r9e8aGbMe60JbyaNjxE+rTatqzcUXWZCEFSa8xgxhiVNeeYlRTy179wkF
	 gF9NvL2WE0X1g==
Date: Fri, 13 Feb 2026 16:47:03 -0500
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: [PATCH 0/3] b4 keyring maintenance
Message-ID: <20260213-bizarre-nippy-wildcat-60dd35@lemur>
References: <cover.1770141846.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1770141846.git.u.kleine-koenig@baylibre.com>

On Tue, Feb 03, 2026 at 07:19:23PM +0100, Uwe Kleine-König wrote:
> last week I noticed that there are several symlinks in .keyring (i.e.
> the directory that can be used with b4) that are not up to date. This
> patch set cleans up a part of the issues.

Merged, thank you!

> What is still open and ugly:
> 
>  - The scripts don't cope for these cases, so unless some manual care is
>    applied, the keyring will become outdated again.
>  - There are quite some email addresses that are part of two keys
>    (`iconv -f latin1 keys/*.asc | sed -nr 's/^uid[^<]*<([^>]*)>/\1/p' | sort | uniq -d`
>    produces some false positives)
>    For these the cert that is linked to is not chosen deterministically.

I agree, this was never really completed, largely because the b4 keyring isn't
fully completed as far as designing it goes. I hope to get back to it soon,
though.

Thanks,
-K
