Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E496BFC7
	for <keys@linux.kernel.org>; Mon, 23 Sep 2024 13:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727099928; cv=none; b=iZFt5pCGEjWoZ16PSPs4T+zDg0zWUiQZuZhJwPgIJ8+QCap+UAPCT8X3FRCHEH9c3U0rbGJbRmwTWFZrP9WCZUWcpJfsYRpsk9PFBhFo97Ur9d2/qUYtFa1lPBwqysZggfgti3ee3ypMxIYZIzQkQG/R7XcL6GjKfqaBI/OgNq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727099928; c=relaxed/simple;
	bh=RVrakuGSto/3zU5S8Y7G8r1Y2sRpOL76kis2+LpVbaU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PjGRPzGW9+TjbZDBtuEyG9Tz/cwaUheCkypaw1wDi9mK64DjSdmK+I1rNQ8rJ5ETlqIZkEe+vDclEbr9NjhJexTX3GZylPF5+K1MztvDyCjMCAf3Ovb5Zt0LYbtrKWyxZzxdOp4BT7gFrH1OKmcQBdr7MO52WevYu8qRiuwtVEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=eU5b2+nZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="eU5b2+nZ"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33152C4CEC4;
	Mon, 23 Sep 2024 13:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1727099928;
	bh=RVrakuGSto/3zU5S8Y7G8r1Y2sRpOL76kis2+LpVbaU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eU5b2+nZA8etsqkFQGPsNnrBTToTZv7ixmMLuG+sUB2jPm+k4Aih28G0HCwyZggzo
	 qtHGGrfpimxNV4XOe7sdC/ywwUA1ZCgCGxjp0eyzAUUuCKPEPvn9H56TRM2982364A
	 /iVtJ6Hpn3eJrE/O7t31tWFuEwT427CLti4huEGE=
Date: Mon, 23 Sep 2024 09:58:45 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Nicolas Schier <nicolas@fjasle.eu>
Cc: keys@linux.kernel.org
Subject: Re: Add nicolas@fjasle.eu to korg-keyring
Message-ID: <20240923-frisky-lobster-of-elegance-b1179d@lemur>
References: <20240923-lively-hopeful-chachalaca-bfb520@lindesnes>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240923-lively-hopeful-chachalaca-bfb520@lindesnes>

On Mon, Sep 23, 2024 at 07:57:34AM GMT, Nicolas Schier wrote:
> Hi,
> 
> can you please add my attached key to the korg-keyring?

Added as afcf8a4294d83d791b25b1e54ce01c2da3cbc970

Thanks!

-K
