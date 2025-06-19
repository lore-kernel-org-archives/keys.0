Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20B212B71
	for <keys@linux.kernel.org>; Thu, 19 Jun 2025 14:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750342249; cv=none; b=F1ngNbKz7FyaKcic4AFY2aEJbqm90brjNvL/el8BcZan0piT8jOQYMlez8KgUKoQOOm4AVd6QT/5zIuRoQPg94X+JqNFTAuSpWg7Lx9YC8Shyc8hgmGC3hoXpRCv6ZLqFtOXuNHHXvWR864oHkBsj7pBzcdRNw+xEIakhE73FLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750342249; c=relaxed/simple;
	bh=pxSBStHLMnT3mqSUZtdFLKaMWysI/IboGy7TkLWXG1Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pD38BGNhIxaZdrJfFQESWS1qzF0EHxmTSGnT3jNfMctqLQCYXhYePQNTCK05G2Fhzo0FqryyfsScpmKQ38rMdu2AiWZSA8p1smbV7jG8Mx/awSnYWLtZ5NXyqz/VebkPuvqGkp6gu3exOpJdysP+HfBxzQFf42JmO8J3mqc0Los=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=T2DtGv5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="T2DtGv5l"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA48BC4CEEA;
	Thu, 19 Jun 2025 14:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1750342248;
	bh=pxSBStHLMnT3mqSUZtdFLKaMWysI/IboGy7TkLWXG1Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T2DtGv5lWMcKaVgD2SbvbaxOZA+cuCZV/mDLWlx9ACY8CDLHySkxEuiASSPPwd1G4
	 qxBceV4W1H4CNhhuEEZ3H/1HNckPoRNcDpdZaYvmuWItSHDplysek5exxgk4v9Mv0c
	 pFijbUxDUYR05sjhnAAWHh2MsbhuOERtBBx9ywyc=
Date: Thu, 19 Jun 2025 10:10:47 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Drew Fustini <fustini@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Update Drew Fustini key with korg email
Message-ID: <20250619-tacky-garnet-loon-61654c@lemur>
References: <aFOMKW71bfPg22Fi@x1>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aFOMKW71bfPg22Fi@x1>

On Wed, Jun 18, 2025 at 09:03:53PM -0700, Drew Fustini wrote:
> I now have a kernel.org account and I've added my fustini@kernel.org
> address to my key.

Updated, thanks.

-K
