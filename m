Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC2F2E401
	for <keys@linux.kernel.org>; Thu, 11 Sep 2025 13:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757596563; cv=none; b=sjIF5y2sifiNcCmwc5a2HBm/jyasEz2KNhmOkwgsmyTPpWt1yGtOioWfky46yNtxtmprVz5iVwN2CK+xAAiJUfAKF3ZTCZAByw/yCd17rf56IbLe4Vw+EGz9rqchBFlfTyBG9evq3hB+jsEd5qFMVFboXPssWrGITM8ze6QVHD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757596563; c=relaxed/simple;
	bh=6OC218/zRW9xQTlPVztm9uMuETl9AsBQjGGMX7xnwWg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t16LPXsiOdd3Z7660QYbv44ewf7OZA65ycgtdJySIYidhiv1r+ro4z+5J49P5S/mwxg44LfysM7UFuEJURR3uh7jgHMocfSqjr9d6IUqGRRG2id+Es0at9C60K7GlP2MVwyiwe9j7+oO+8+1MWusMSxdWjuHhpn9nAgmVE80zFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=DOkruHBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="DOkruHBj"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34EC6C4CEF0;
	Thu, 11 Sep 2025 13:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1757596562;
	bh=6OC218/zRW9xQTlPVztm9uMuETl9AsBQjGGMX7xnwWg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DOkruHBj4g9zQcc+RDBImP2HULMQHTphWj1btfHrJTNbbm1j2XHiz05nmkBX3Hxs2
	 ozVrKarz5yCrVfiyURLNWSjarGLaHStkGzXsw+ovsQK8S35snLLIIjHUBblD+XSWHi
	 WxxoiYgh2OAbS90J69LxqoyRjsu8bikibEI/TTtY=
Date: Thu, 11 Sep 2025 09:16:01 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated Key for Chen-Yu Tsai
Message-ID: <20250911-taupe-skunk-of-completion-b40d7d@lemur>
References: <aMJBppM4WCFIt4tX@wens.tw>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aMJBppM4WCFIt4tX@wens.tw>

On Thu, Sep 11, 2025 at 11:27:34AM +0800, Chen-Yu Tsai wrote:
> I was notified that my key expired. Here's an update.

Updated, thanks.

-K
