Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC900156EB
	for <keys@linux.kernel.org>; Wed, 18 Oct 2023 12:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="eaGWGk7m"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CBE1C433C7;
	Wed, 18 Oct 2023 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1697633212;
	bh=4ls8/WP6LgpZD566jIu+nApqK5v2qj9U8VF8XPjfpHw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eaGWGk7mpjk2CNh1HnJoh3gpWs/bvg92zo5Yxhy61uHDCcg9uLX3/cCg29BsNJQn/
	 gmAXUaBfTqVFRZjJxMazMD7VEDYwQSJF1MRghw3HM7KUmsf7vP9wlagcX54/MVWp/G
	 Jc3v5Ak5YcK7ebt1KPg8Bs/umarzjesUKprxKU6Y=
Date: Wed, 18 Oct 2023 08:46:51 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Peter Chen <peter.chen@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Update GPG keyring
Message-ID: <20231018-thriving-tidy-14c1ed@meerkat>
References: <20231018005705.GA1093375@nchen-desktop>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231018005705.GA1093375@nchen-desktop>

On Wed, Oct 18, 2023 at 08:57:05AM +0800, Peter Chen wrote:
> Hi, I would like to update my keyring, thanks.

There are no signatures on this key, so we are unable to accept it. If you are
able to, you should get this signed by 2 people who already have a kernel.org
account.

Additionally, this isn't the key that was used to sign Frank Li's key. Did you
just create this one a few days ago?

-K
