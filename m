Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7DD8232785
	for <keys@linux.kernel.org>; Thu,  4 Sep 2025 16:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757003605; cv=none; b=B0XWHEIt+/LMqUjT7S05FU+NjjFZwbAyhzhK3NwXmNB4VlTu4orKkBlKzXdKmhkZBLeRAzRCmIx1Y3J1RJIp8KsW28AEevCDYXcNeK2oS7+nLvOcEdOdggDMvsTZSpEweLjG7tfYceeINrkeXABFzG84qzBdqThaEz/zfKWyZ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757003605; c=relaxed/simple;
	bh=KtSKiBEej4ITf2Xmb7NnWRS9BEYC2NSSxbwNwcn2Lkw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LYFoNwAo0dlfQrUnhqw8+0G5ZacwuT5/iZgXAU7dMc2lPuJj5S9HIbc6xGHXSVXw+lamhKVHMlrjmskW6f9odg/MJm226DyE6q4QciqyUK9jHymPdCgmXzd/J/nCRXSEkNCmnJ81sGBBO+6g2eHzFG4FKNxyJn9SvepmwpkV+RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=NCNRdkAt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="NCNRdkAt"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EF70C4CEF0;
	Thu,  4 Sep 2025 16:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1757003604;
	bh=KtSKiBEej4ITf2Xmb7NnWRS9BEYC2NSSxbwNwcn2Lkw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NCNRdkAt9pVLXQ6iEze3UIZum1jH+IyYCMHFAGbjfktAmv1nmmgZK2JFAxsq6P0jv
	 8yClueaocAo5Txtr3wy59ljCBHUoFKCTVEgEYvtIZolx8nU6SCdGRMQ32hZ+JoeGWT
	 TV7LKTQ7YqvciaDWTjGRV2mRRI7LzCtJLKEZ8VRw=
Date: Thu, 4 Sep 2025 12:33:23 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Brian Masney <bmasney@redhat.com>
Cc: keys@linux.kernel.org
Subject: Re: Key for Brian Masney
Message-ID: <20250904-excellent-awesome-wolverine-b987d2@lemur>
References: <aLlmSF9BgaMglQ72@x1>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aLlmSF9BgaMglQ72@x1>

On Thu, Sep 04, 2025 at 06:13:28AM -0400, Brian Masney wrote:
> 

> -----BEGIN PGP PUBLIC KEY BLOCK-----

Added, thanks.

-K
