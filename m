Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDDA7481ABB
	for <keys@linux.kernel.org>; Wed, 29 Jul 2026 14:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785335229; cv=none; b=qSdlh+hWzzBAkfrewkILGhWK/9sG9bFrdsrdEsj47wqlFqFwe3f31lZX13t/YHefn0psWn2Q60x3vzg8bJbA6X9/Hn8pPv5KYn95Biud4xrVq5Ll2glGPT/II0/yxts+usqOc0fdza3QsJJEWqQcRIkkVqVpu9VnYhV7iBJ97ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785335229; c=relaxed/simple;
	bh=vjVk98VQD7m6Hz1HJ9/kRX8It4KG+UkbI1faKhwgHgM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D9EPdbLm/QwElJVxm+zqmVqS5iL0SW07+oF6DhGXzp6kbIhajNo7/l7+W62d+GJHEs1oCBQZTmq0ZMh/5ojsrCW7YYQvB+yqHqnauhXdmxViSKJ/tGMmK/03tteQglnuF9+ncspHxdOpTatopeFUT0mPIKp84pr60hvD00yohlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ed2qjJIj; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ed2qjJIj"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58EA01F00A3A;
	Wed, 29 Jul 2026 14:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785335228;
	bh=vjVk98VQD7m6Hz1HJ9/kRX8It4KG+UkbI1faKhwgHgM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ed2qjJIjdparO5gWYAi+P+8J3tcckIi3Inw5/O0/NpqoUY9p4of9Ojnpxg2tt1Z2I
	 GliXeSX0caFH3Dv+s4CwYLRjmY82NIbv5/WxVm5+aWhesMDfrpqmio/HM9Ak0Tijfl
	 IRKB+Kw0gULa/Ms0+jCy6ir6TznuSR6zMeyUsOjuej9jfHy/7DGKM2XKUHA6qLCVQe
	 qMxGTsPz/LW0EACT47Z7q4qgbQlz35JcGIJpUlhSt3NtiOVgKaMTSVsaYldnDkecyD
	 +PcGc606Ypcs9wYmjd9N8+ub23szMQXlhbZ7qpYl1HN3IHqzGw//QsSQnLZfLH21sJ
	 7PymDb1e/DHIg==
Date: Wed, 29 Jul 2026 10:27:07 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: keys@linux.kernel.org
Subject: Re: resigned keys from 9AFB7B8C9A5F5BBC
Message-ID: <20260729-secret-grinning-degu-eabdbf@meerkat>
References: <2323770.72vocr9iq0@phil>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2323770.72vocr9iq0@phil>

On Tue, Jul 28, 2026 at 04:53:00PM +0200, Heiko Stuebner wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks!

-K
