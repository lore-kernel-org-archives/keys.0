Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE932EE5FD
	for <keys@linux.kernel.org>; Wed, 10 Sep 2025 21:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757538776; cv=none; b=ZcvfGChxvZnLTq0bCzxUZjXQliyLxiuhigo4lslkx5RuGuhLNGTXVAW9KyJyFj4pvN4isMD9xJmElhWub6MXnHnZrzThTdOTrKJwUAPXJFKYx6Wx1NtKz76NZEWYZeYfz5zDe0aVKpKWMTWMQB3kYBn2FaXLLNCtUW0uIDxBcWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757538776; c=relaxed/simple;
	bh=mYAwH/DbatI8D/RFpPwCXaQrypOTlNeLEKhFD4yKvCk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bpiwk61iSokQ3OwR9/mQumiBAHgpfZI6DbprEGWLpZHKxgNgXyg+hG7OBKxmLSFwPqboJLwzHt/47PBClqScSXExtgxeMnEphW7jO9BDinUU+AvBFu3hSAk+fZxcaHADs3fKgoDzIE4TUZnTLdk9JePnrq2/o0qkwUZU7Fd9Mvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=Kq4XvJpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Kq4XvJpz"
Received: by smtp.kernel.org (Postfix)
	id EF44EC4CEF7; Wed, 10 Sep 2025 21:12:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A229AC4CEEB;
	Wed, 10 Sep 2025 21:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1757538774;
	bh=mYAwH/DbatI8D/RFpPwCXaQrypOTlNeLEKhFD4yKvCk=;
	h=Date:From:To:Cc:Subject:From;
	b=Kq4XvJpz8sSK/HBynJnCelaqY3QUBjsBXwQSyjSAgoTaMAwNq5tITD8eiqJpNVt+u
	 gjXa8o32q6bNT2Al903ox86NIrGb7pf3JD6RAJGnW1oIEVtW7iOQC6PB8WUoAm6H5j
	 r527eXjuhSWAgCIXCo+0sP+oO7xtXdbfNvcBtyKc=
Date: Wed, 10 Sep 2025 17:12:53 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: wens@csie.org
Cc: keys@kernel.org
Subject: Your key expiry
Message-ID: <20250910-sceptical-ibis-of-symmetry-4cf8dc@lemur>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hello:

Your key expired on September 5 -- do you have an updated version you can
submit? You're in a lot of trust paths, so it makes a lot of impact on the web
of trust.

Best wishes,
-K
