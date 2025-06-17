Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88913227E8A
	for <keys@linux.kernel.org>; Tue, 17 Jun 2025 19:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750189596; cv=none; b=BQlmvjoEDBznDM/hPxUaGKZyHodZ2LUa1XQIIa5RuXtWo7Lgdu/7YTxkcVmnZE5I/LVfqUCFYKDw/fB56iWY5+S1UBRf52WVUAqtyN7eh5/Ahfy1xtfLaos/iFYfabRH1iEifovkso5FyxS9Lj8bODxyJPHdktSARDvTdAf/2vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750189596; c=relaxed/simple;
	bh=pAmYYPyWwTwhFyw3ec/fJVtrQHv0xI2Yb51RAnua2tU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XkVBWYz4P0Wvf0J+rzQfl6xpznKuf9gqa6CafI7mg8e5ZmT7DPngT1R/lkk1vSs36yTAIZwBABopPYFPnabc5fCJUQIWfArwEwYjTl5huquCK3V1v+MA27gwyTerrHKcMrqodm2JAP4D56W016UaxD0qsMcMtDvkVwavg1XtDr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=XH0Kuz4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="XH0Kuz4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6729C4CEED;
	Tue, 17 Jun 2025 19:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1750189596;
	bh=pAmYYPyWwTwhFyw3ec/fJVtrQHv0xI2Yb51RAnua2tU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XH0Kuz4QpDmbJi7drWXk9k0NAcPMCqeQUCFF3dKY0pctZHkjXkNIRgtAD+9g1ud1y
	 RWaA85kyViSpi+8ESD5KWPuTuhasl6A6SRRg0in4ClTQSdeuuYSE6FG2wIhyYHoRcv
	 7XxHmjLaBzLlr/WbW5TtmNj6MTzq6hoCGdmwe5ls=
Date: Tue, 17 Jun 2025 15:46:29 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Drew Fustini <drew@pdp7.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Drew Fustini
Message-ID: <20250617-mottled-righteous-spider-ca6dba@lemur>
References: <aE9CW1hJZ08QkUav@x1>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aE9CW1hJZ08QkUav@x1>

On Sun, Jun 15, 2025 at 02:59:55PM -0700, Drew Fustini wrote:
> Hi, I have attached my GPG key: 1B6F948213EA489734F3997035D5CD577C1E6010

Updated, thanks!

-K
