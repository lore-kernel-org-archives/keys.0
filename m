Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC1732182
	for <keys@linux.kernel.org>; Wed, 29 Nov 2023 14:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="vxnD196t"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F6E7C433C8;
	Wed, 29 Nov 2023 14:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1701268622;
	bh=mEe+ozF+vSkvgTAMjnOUSZ9YYRFrBbcIgw0V339L0hg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vxnD196tC+t9R8rjizse6GKEZpwJP78yadiynS7s2uf+m1m+DKB4djbNRZVDLQp1k
	 HrJVBqbWj38uuYFRFt04lkkineaY23k2S9dJtBlN6P63E2jxa++JTO0ZNJcBfEhcrt
	 HGODJiH9gIZ90ElHOxDzGI7pBhIUEUPizllmrO8A=
Date: Wed, 29 Nov 2023 09:37:01 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Alice Ryhl <aliceryhl@google.com>
Cc: keys@linux.kernel.org
Subject: Re: Key for Alice Ryhl
Message-ID: <20231129-chicken-of-eminent-youth-eeaefb@meerkat>
References: <20231129133624.3443574-1-aliceryhl@google.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231129133624.3443574-1-aliceryhl@google.com>

On Wed, Nov 29, 2023 at 01:36:24PM +0000, Alice Ryhl wrote:
> Hi.
> Please add my key to the Kernel keyring.

Added, thanks!

-K
