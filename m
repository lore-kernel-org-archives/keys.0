Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C48D382F04
	for <keys@linux.kernel.org>; Tue, 21 Apr 2026 21:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776807793; cv=none; b=GxlrIbjK6ejE0k322xY+bM+c1Z/Izs96EAEmBYmQV3BCzzE3VjoiQPI+d9RQKKRcFW/5WQv/8bfQ5kQG6jk1sJjhxBuFM327L2tNxSxHc5R0xmjSZg9zWMnAq05xTSPYpCJhLMwdIt+nmLlZZxgT5t9YZiMT8O6xfAkxP9m2W9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776807793; c=relaxed/simple;
	bh=EYYF+oyg1das3H1wBFR+wNSnw00nWQ2s+EhWH0qxQ68=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mN/pOPcGrqP/IMApCyGISu85nymNsyDa4vh7j6Jj/Z0YqJFKpfPrDLZJps/kPtMXIvx3hQlPDMnRdCDGNnfzGweO/joPqj1NxLyfn7+6Xbken9iF3LneB3Ib84xM84OyDgnnHF6R9k7RFURqQces5WA5LxWFGOPhfotr3mq/xEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AV8Brkxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AV8Brkxm"
Received: by smtp.kernel.org (Postfix)
	id CDABAC2BCB4; Tue, 21 Apr 2026 21:43:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C286C2BCB0;
	Tue, 21 Apr 2026 21:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776807792;
	bh=EYYF+oyg1das3H1wBFR+wNSnw00nWQ2s+EhWH0qxQ68=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AV8BrkxmxZWuANtfU4M7iV8lsd21eTu/MUHe6I6KANpYu7lpO/a8I7ehuisvmCRQm
	 3FFgWolzqWqqEOq4clIw/GdCQ7sLQaoKV4K9LCqLUBKt+eOppDvv9UpPxH9zXOHoBR
	 7mL92dnaHZMQ21+0wkfRU1jz0wQ4G55gVV1QqBxSuSKPDlqgyEw/PGoQimU4zRhk6q
	 5s4Sf2FkUmLK2HakmwyM7WL/u5QFBKWSc9MmdXW1214IO06fRFQ6JbotHXWO6la7Ef
	 x7f4xpjJjSraf28Vgr124lB6kvpLOwOdilAwYsPl94ER1nYMDm7DltlDhhRp5AOovT
	 vMt7wL0jla0KA==
Date: Tue, 21 Apr 2026 17:43:11 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Lorenzo Stoakes <ljs@kernel.org>
Cc: keys@kernel.org
Subject: Re: Replacement GPG key for Lorenzo Stoakes
Message-ID: <20260421-capable-resilient-eel-37bec7@meerkat>
References: <aec18mJotTlfq155@lucifer>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aec18mJotTlfq155@lucifer>

On Tue, Apr 21, 2026 at 09:40:15AM +0100, Lorenzo Stoakes wrote:
> Hi all,
> 
> TL;DR here is that I managed to lose my private key, and need to replace
> it.
> 
> So my old key, 5BEF5562908102FB56727B7CC52D7AFE85F25509, is entirely
> lost. I have a revocation certificate for that which I will be issuing
> shortly.
> 
> The new key is E7F417BF5214569E89D04F46CF9DCD8A81E27F14.
> 
> Due to losing the ability to sign from the original, I cannot cross-sign it
> with the old.
> 
> So to establish the required trust, I had the new key signed by people with
> the requisite level of trust. I attach the key here.
> 
> Could you please remove the old and replace it with the new?

Done now. Thanks!

-K
