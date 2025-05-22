Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC16D2356CF
	for <keys@linux.kernel.org>; Thu, 22 May 2025 14:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925340; cv=none; b=X/s5IZCW7cdp06aOUobpAHU4r+fLZ2pmDqVeNgnx/JHJ+CVDu9gxRBe6aUUezgF0i5tskUcDEurLGQhTXh2ih6zO+8Se4LYp9D//d/sQcBfMBIe/aJ5wxfWxbvwpMTqZBsfPQb3xf2SAsOpnLM3tfkpYAyiDn/Uwiz3cim2q7Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925340; c=relaxed/simple;
	bh=qWrEY+TQmJHJeWC6vkggS0IIe+FuZHrsUyACk9gQeUw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sDFL0nVA3hVMHqoUHZXLzbFdZM5cidIMZW5PdqqSOoQ42DB+51IYriMhVQ9OZdpbUEAGjWDF+CA0GzUZvzj6Bc2Syjyr1dSqM/6Z/Pf1QZFDXXfFgBWOcT2rrfnZnwHsY7c+GmBAc8BaOnZt7h+Yf+yQb6VcRXQzcPYpb8ae2QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=yIuSebuN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="yIuSebuN"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19633C4CEE4;
	Thu, 22 May 2025 14:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1747925340;
	bh=qWrEY+TQmJHJeWC6vkggS0IIe+FuZHrsUyACk9gQeUw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yIuSebuNEMkOs92Ul+TqRslapCvd6SneRjsjU6NiZ3xTQ+Y5B2s86AsV/vrYul4da
	 UtXIfAN+ztvwFgaB3Wb9gdbr3oorSyoIyr9VwppqOLo01OQ6GtK5opNf7UdKk7DmB7
	 JN2TYzaMMi3EGtRwY6EjN8OUUn+K2JHI/t8zshCE=
Date: Thu, 22 May 2025 10:48:59 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Vladimir Zapolskiy <vz@mleia.com>
Cc: keys@linux.kernel.org
Subject: Re: Key for Vladimir Zapolskiy
Message-ID: <20250522-fluorescent-cute-dalmatian-d1fddd@meerkat>
References: <b93dd6a4-b4d6-4af2-9311-947b23228433@mleia.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b93dd6a4-b4d6-4af2-9311-947b23228433@mleia.com>

On Wed, May 14, 2025 at 09:58:16PM +0300, Vladimir Zapolskiy wrote:
> Hello,
> 
> please add my key to into the kernel.org keyring, thank you in advance.

Added, thanks. Sorry for the delay -- we are doing some maintenance on the
keyring.

-K
