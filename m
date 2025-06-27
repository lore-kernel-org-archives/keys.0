Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8CC825DD0C
	for <keys@linux.kernel.org>; Fri, 27 Jun 2025 21:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751059073; cv=none; b=UpYEQ49s5tEkBV7JfIzsUfYMlAdL0+egUpfrBusDkVWGurDVnCLSt1X6PYnV9H7RHU593kWaT+7YmhYwGhi1uFvqhCMfOro9L/yY92vlADGgoOOdjI9eBUZKckEA3X3n4rcA8GXOc0RIYKUvmKjA5tg9rVCwpwlqumAuJpMzVoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751059073; c=relaxed/simple;
	bh=kK9ctmbdySXF89PB0q0zMjtCSxA6g7bROT3vJyU1Tyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vdk/PSji9hjqEB1a6qq0lyJOYryBqANjerujeMvHBk1dRMWLvJrHPl5G04xacf82IYMRZJtosUpt3vs2aWp7JDIUyQuAkMP74MkBDftdcSML1o0T64gy7aVYnZOSUDbo2h+UYyNlH0SQ1WP0iqLNBClYGm10OJ1r31HDbs4iJDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=Aq6jQ4e9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Aq6jQ4e9"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AD19C4CEE3;
	Fri, 27 Jun 2025 21:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1751059072;
	bh=kK9ctmbdySXF89PB0q0zMjtCSxA6g7bROT3vJyU1Tyo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Aq6jQ4e9U5F8Hs9t1lZKs28rZ4U+ueX7+ApwVPbZkev8qs5h+ixVw23/Xh/2WMkvb
	 MwqBCtGzZn2F5Z9U0BnqNOBz3gK8bQXi03Sm3gTo1dj0FPjmByCIKCLTFzzz2Lfk5t
	 WLlBRhKa0d8Q0xJkN39m42SY4ARVjyT2dMIo3g5A=
Date: Fri, 27 Jun 2025 17:17:47 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Daniel Gomez <da.gomez@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Update Daniel Gomez key
Message-ID: <20250627-big-pristine-jacamar-e501f1@lemur>
References: <3c6a58b9-e011-4304-9361-45c1b1e7f037@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3c6a58b9-e011-4304-9361-45c1b1e7f037@kernel.org>

On Fri, Jun 27, 2025 at 10:52:16PM +0200, Daniel Gomez wrote:
> Key updated with new signatures.

Updated, thanks.

-K
