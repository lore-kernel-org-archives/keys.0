Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195042222DE
	for <keys@linux.kernel.org>; Thu, 13 Feb 2025 20:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739478138; cv=none; b=m31JTdJpqgGHCY1fODLR+rAnZGo9dn1ym+Qp0b7jOOztHH7NcdXHmofiK0/JB5XC+TTn2LMAexsKIblbBbYZGtyZrYR7zav6AnA+0zcUsGiZPFiEOe+ty3luaHJ0P3PGiesBL7tUz8Fi00THMuXKOE9vTJH+Y7rHauAjWH8AN3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739478138; c=relaxed/simple;
	bh=lq/hbMzDJcLBYt/D2UimMaNeetfjf/CzxLJbDGe121E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NAAbehWDLaHy2KpINuL/VwZCFtrr73haq3c52SLMxzLFqviWeKCRa7TlHEgYgwuA+hqdFjEIO/eJ0okezXwcxiUVi1VnHAAweuCnAdBUEKTRX7gMOIcnd5h2wTXWqe0ZadJ/pYDd/sAXkCfJ5gONuPncm7GelJNWcD2+2Yqc0b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=is4kTx1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="is4kTx1s"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E71CC4CED1;
	Thu, 13 Feb 2025 20:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1739478137;
	bh=lq/hbMzDJcLBYt/D2UimMaNeetfjf/CzxLJbDGe121E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=is4kTx1sric/H1/sABIYyzAbRqEZaZR8/oJJZrv6PfkRF0so0Aq1hA7PugenrEQ9X
	 MI2+TMZFXSVBwIfjn5lwmRt0HywS2ybseue3x8Uw/I4ArdJly5bfqX+uy5FgEF9kO0
	 2vb/nyVipKjn4ex5K7RN//I9YWqxVkAd8WKbvb1U=
Date: Thu, 13 Feb 2025 15:22:16 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Alex Shi <seakeel@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: alexs@kernel.org
Message-ID: <20250213-small-cobalt-mosquito-dafbea@lemur>
References: <CAJy-AmnCPfyLaRyv2Ha58ggTtYTbZovwsQDaSFWmjJAgzXzepA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAJy-AmnCPfyLaRyv2Ha58ggTtYTbZovwsQDaSFWmjJAgzXzepA@mail.gmail.com>

On Thu, Feb 13, 2025 at 11:21:43AM +0800, Alex Shi wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Applied, thanks.

-K
