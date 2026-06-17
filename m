Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4199C3783CC
	for <keys@linux.kernel.org>; Wed, 17 Jun 2026 20:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781728457; cv=none; b=CGXs3H73WD4RxFi5SyREDCnmD+NLM53zvapux602VxAAzxWZZHwPLY9LDJP84RKX3EieksdB7xzLqdqZVX8zdYdW08OUxHFERgodugjBrW6GXkjm8ZX8ocIq0PijxXqXhnllUVik41+YlMX/8AovjUeHKhBnpX7bDR9TFzEh99c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781728457; c=relaxed/simple;
	bh=7BBcqh/rhmU0JzOJq5VA4J63MQ40FtdJtr7vpF46ric=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d4IfUQKAsGsMptMlvbonM7ahWFMxHyn9fpI4PduIjr8Wp9dN7vdNpJaSUF07pbi6p+9+5C4BuoYFBK70mEzdnUR5FygYaxzUh4vQt710uvVSVOwphfI+jq3aw7zRHMXgbpY1TG72tm5gXgAZ6HGnLYZhE4kYuTI5CR52hGbBUcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2zAEVOV; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2zAEVOV"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CD1F1F000E9;
	Wed, 17 Jun 2026 20:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781728455;
	bh=7BBcqh/rhmU0JzOJq5VA4J63MQ40FtdJtr7vpF46ric=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=b2zAEVOVcDx38XIQNmP/gZAXwbE1MmNHT+jwobFj+5stwNsHAw8ZMs0iUiLHsNqJG
	 beF5FUFIPUZ+mE3qEJIxaX8lsrZ42ZbaB+M647Q1YxDIXNQYu+A+ng+LyXnILI567Z
	 pqN91wKFDAab/bTGs+BDDsNgM+ix+0o88BknRNBqk1xF1ns7I0JmrKmh66tiKjm5Ov
	 3F4pi7Jgu62GUEVweNGIUqY+vonO8CzGz9E2Bqj4vmnJ/tgl/kOej1sNQsXrgA/bU8
	 9CvEeUXZvn4cQNzNdUWth7WpLZhjK0ZbMm0HTfZbtQxYDyM8Xv6gHuxojoN8xJPxCL
	 KKEKK2y6LaZLg==
Date: Wed, 17 Jun 2026 16:34:14 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Daniel Wagner <wagi@monom.org>
Cc: keys@linux.kernel.org
Subject: Re: resigned keys from 587C5ECA5D0A306C
Message-ID: <20260617-vivid-competent-manul-6c416d@meerkat>
References: <0561c100-4799-42f2-890a-8696e0a3976c@nitrogen.local>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <0561c100-4799-42f2-890a-8696e0a3976c@nitrogen.local>

On Tue, Jun 16, 2026 at 08:34:14AM +0200, Daniel Wagner wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Applied, thanks!

-K
